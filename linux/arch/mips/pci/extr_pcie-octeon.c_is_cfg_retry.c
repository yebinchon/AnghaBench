
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ crs_dr; } ;
union cvmx_pemx_int_sum {TYPE_1__ s; int u64; } ;


 int CVMX_PEMX_INT_SUM (int) ;
 int cvmx_read_csr (int ) ;

__attribute__((used)) static int is_cfg_retry(void)
{
 union cvmx_pemx_int_sum pemx_int_sum;
 pemx_int_sum.u64 = cvmx_read_csr(CVMX_PEMX_INT_SUM(1));
 if (pemx_int_sum.s.crs_dr)
  return 1;
 return 0;
}
