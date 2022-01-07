
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cvmx_helper_loop_enable (int) ;
 int __cvmx_helper_npi_enable (int) ;
 int __cvmx_helper_rgmii_enable (int) ;
 int __cvmx_helper_sgmii_enable (int) ;
 int __cvmx_helper_spi_enable (int) ;
 int __cvmx_helper_xaui_enable (int) ;
 int cvmx_helper_interface_get_mode (int) ;

__attribute__((used)) static int __cvmx_helper_packet_hardware_enable(int interface)
{
 int result = 0;
 switch (cvmx_helper_interface_get_mode(interface)) {

 case 137:
 case 133:

  break;

 case 128:
  result = __cvmx_helper_xaui_enable(interface);
  break;




 case 131:
 case 136:
  result = __cvmx_helper_rgmii_enable(interface);
  break;




 case 129:
  result = __cvmx_helper_spi_enable(interface);
  break;




 case 130:
 case 132:
  result = __cvmx_helper_sgmii_enable(interface);
  break;

 case 134:
  result = __cvmx_helper_npi_enable(interface);
  break;




 case 135:
  result = __cvmx_helper_loop_enable(interface);
  break;
 }
 return result;
}
