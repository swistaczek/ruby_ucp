# -*- encoding : utf-8 -*-
=begin
Ruby library implementation of EMI/UCP protocol v4.6 for SMS
Copyright (C) 2011, Sergio Freire <sergio.freire@gmail.com>

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
=end


class Ucp::Pdu::UCP5x < Ucp::Pdu::UCPMessage

  @xservices=[]
  
  def initialize()
    super()
    @xservices=Array.new
    @fields=[:adc,:oadc,:ac,:nrq,:nadc,:nt,:npid,:lrq,:lrad,:lpid,:dd,:ddt,:vp,:rpid,:scts,:dst,:rsn,:dscts,:mt,:nb,:msg,:mms,:pr,:dcs,:mcls,:rpi,:cpg,:rply,:otoa,:hplmn,:xser,:res4,:res5]
  end

  def set_fields(ucpfields={})
    @h=@h.merge ucpfields
  end

  def initialize_message(ucpfields={})
    super()
    @h=@h.merge ucpfields
  end

end
