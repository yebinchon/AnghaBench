
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int en; } ;
union cvmx_gmxx_inf_mode {int u64; TYPE_1__ s; } ;


 int CVMX_GMXX_INF_MODE (int) ;
 int __cvmx_helper_sgmii_enumerate (int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

int __cvmx_helper_sgmii_probe(int interface)
{
 union cvmx_gmxx_inf_mode mode;






 mode.u64 = cvmx_read_csr(CVMX_GMXX_INF_MODE(interface));
 mode.s.en = 1;
 cvmx_write_csr(CVMX_GMXX_INF_MODE(interface), mode.u64);
 return __cvmx_helper_sgmii_enumerate(interface);
}
