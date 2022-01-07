
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hg2tx_en; } ;
union cvmx_gmxx_hg2_control {TYPE_1__ s; int u64; } ;


 int CVMX_GMXX_HG2_CONTROL (int) ;
 int cvmx_read_csr (int ) ;

int __cvmx_helper_xaui_enumerate(int interface)
{
 union cvmx_gmxx_hg2_control gmx_hg2_control;


 gmx_hg2_control.u64 = cvmx_read_csr(CVMX_GMXX_HG2_CONTROL(interface));
 if (gmx_hg2_control.s.hg2tx_en)
  return 16;
 else
  return 1;
}
