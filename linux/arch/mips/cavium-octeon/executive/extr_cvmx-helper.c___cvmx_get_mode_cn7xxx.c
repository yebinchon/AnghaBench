
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
union cvmx_gmxx_inf_mode {TYPE_1__ cn68xx; int u64; } ;
typedef int cvmx_helper_interface_mode_t ;


 int CVMX_GMXX_INF_MODE (int) ;
 int CVMX_HELPER_INTERFACE_MODE_DISABLED ;
 int CVMX_HELPER_INTERFACE_MODE_LOOP ;
 int CVMX_HELPER_INTERFACE_MODE_NPI ;
 int CVMX_HELPER_INTERFACE_MODE_SGMII ;
 int CVMX_HELPER_INTERFACE_MODE_XAUI ;
 int cvmx_read_csr (int ) ;

__attribute__((used)) static cvmx_helper_interface_mode_t __cvmx_get_mode_cn7xxx(int interface)
{
 union cvmx_gmxx_inf_mode mode;

 mode.u64 = cvmx_read_csr(CVMX_GMXX_INF_MODE(interface));

 switch (interface) {
 case 0:
 case 1:
  switch (mode.cn68xx.mode) {
  case 0:
   return CVMX_HELPER_INTERFACE_MODE_DISABLED;
  case 1:
  case 2:
   return CVMX_HELPER_INTERFACE_MODE_SGMII;
  case 3:
   return CVMX_HELPER_INTERFACE_MODE_XAUI;
  default:
   return CVMX_HELPER_INTERFACE_MODE_SGMII;
  }
 case 2:
  return CVMX_HELPER_INTERFACE_MODE_NPI;
 case 3:
  return CVMX_HELPER_INTERFACE_MODE_LOOP;
 case 4:

  return CVMX_HELPER_INTERFACE_MODE_DISABLED;
 default:
  return CVMX_HELPER_INTERFACE_MODE_DISABLED;
 }
}
