
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qlm_spd; int qlm_cfg; } ;
union cvmx_mio_qlmx_cfg {TYPE_1__ s; void* u64; } ;
typedef int cvmx_helper_interface_mode_t ;


 int CVMX_HELPER_INTERFACE_MODE_DISABLED ;
 int CVMX_HELPER_INTERFACE_MODE_LOOP ;
 int CVMX_HELPER_INTERFACE_MODE_NPI ;
 int CVMX_HELPER_INTERFACE_MODE_SGMII ;
 int CVMX_HELPER_INTERFACE_MODE_XAUI ;
 int CVMX_MIO_QLMX_CFG (int) ;
 void* cvmx_read_csr (int ) ;

__attribute__((used)) static cvmx_helper_interface_mode_t __cvmx_get_mode_cn68xx(int interface)
{
 union cvmx_mio_qlmx_cfg qlm_cfg;
 switch (interface) {
 case 0:
  qlm_cfg.u64 = cvmx_read_csr(CVMX_MIO_QLMX_CFG(0));

  if (qlm_cfg.s.qlm_spd == 15)
   return CVMX_HELPER_INTERFACE_MODE_DISABLED;

  if (qlm_cfg.s.qlm_cfg == 2)
   return CVMX_HELPER_INTERFACE_MODE_SGMII;
  else if (qlm_cfg.s.qlm_cfg == 3)
   return CVMX_HELPER_INTERFACE_MODE_XAUI;
  else
   return CVMX_HELPER_INTERFACE_MODE_DISABLED;
 case 2:
 case 3:
 case 4:
  qlm_cfg.u64 = cvmx_read_csr(CVMX_MIO_QLMX_CFG(interface));

  if (qlm_cfg.s.qlm_spd == 15)
   return CVMX_HELPER_INTERFACE_MODE_DISABLED;

  if (qlm_cfg.s.qlm_cfg == 2)
   return CVMX_HELPER_INTERFACE_MODE_SGMII;
  else if (qlm_cfg.s.qlm_cfg == 3)
   return CVMX_HELPER_INTERFACE_MODE_XAUI;
  else
   return CVMX_HELPER_INTERFACE_MODE_DISABLED;
 case 7:
  qlm_cfg.u64 = cvmx_read_csr(CVMX_MIO_QLMX_CFG(3));

  if (qlm_cfg.s.qlm_spd == 15) {
   return CVMX_HELPER_INTERFACE_MODE_DISABLED;
  } else if (qlm_cfg.s.qlm_cfg != 0) {
   qlm_cfg.u64 = cvmx_read_csr(CVMX_MIO_QLMX_CFG(1));
   if (qlm_cfg.s.qlm_cfg != 0)
    return CVMX_HELPER_INTERFACE_MODE_DISABLED;
  }
  return CVMX_HELPER_INTERFACE_MODE_NPI;
 case 8:
  return CVMX_HELPER_INTERFACE_MODE_LOOP;
 default:
  return CVMX_HELPER_INTERFACE_MODE_DISABLED;
 }
}
