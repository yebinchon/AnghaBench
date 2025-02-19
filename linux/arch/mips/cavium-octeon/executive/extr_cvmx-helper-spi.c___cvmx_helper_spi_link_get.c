
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int status; int duplex; int speed; } ;
union cvmx_gmxx_rxx_rx_inbnd {TYPE_1__ s; } ;
struct TYPE_7__ {int link_up; int full_duplex; int speed; } ;
struct TYPE_8__ {TYPE_2__ s; scalar_t__ u64; } ;
typedef TYPE_3__ cvmx_helper_link_info_t ;
struct TYPE_9__ {scalar_t__ board_type; } ;


 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 int cvmx_helper_get_interface_index_num (int) ;
 int cvmx_helper_get_interface_num (int) ;
 union cvmx_gmxx_rxx_rx_inbnd cvmx_spi4000_check_speed (int,int) ;
 scalar_t__ cvmx_spi4000_is_present (int) ;
 TYPE_4__* cvmx_sysinfo_get () ;

cvmx_helper_link_info_t __cvmx_helper_spi_link_get(int ipd_port)
{
 cvmx_helper_link_info_t result;
 int interface = cvmx_helper_get_interface_num(ipd_port);
 int index = cvmx_helper_get_interface_index_num(ipd_port);
 result.u64 = 0;

 if (cvmx_sysinfo_get()->board_type == CVMX_BOARD_TYPE_SIM) {

  result.s.link_up = 1;
  result.s.full_duplex = 1;
  result.s.speed = 10000;
 } else if (cvmx_spi4000_is_present(interface)) {
  union cvmx_gmxx_rxx_rx_inbnd inband =
      cvmx_spi4000_check_speed(interface, index);
  result.s.link_up = inband.s.status;
  result.s.full_duplex = inband.s.duplex;
  switch (inband.s.speed) {
  case 0:
   result.s.speed = 10;
   break;
  case 1:
   result.s.speed = 100;
   break;
  case 2:
   result.s.speed = 1000;
   break;
  case 3:
   result.s.speed = 0;
   result.s.link_up = 0;
   break;
  }
 } else {


  result.s.link_up = 1;
  result.s.full_duplex = 1;
  result.s.speed = 10000;
 }
 return result;
}
