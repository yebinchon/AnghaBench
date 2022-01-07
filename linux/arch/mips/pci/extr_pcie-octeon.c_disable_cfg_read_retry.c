
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cfg_rtry; } ;
union cvmx_pemx_ctl_status {int u64; TYPE_1__ s; } ;
typedef scalar_t__ u32 ;


 int CVMX_PEMX_CTL_STATUS (int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static u32 disable_cfg_read_retry(void)
{
 u32 retry_cnt;

 union cvmx_pemx_ctl_status pemx_ctl;
 pemx_ctl.u64 = cvmx_read_csr(CVMX_PEMX_CTL_STATUS(1));
 retry_cnt = pemx_ctl.s.cfg_rtry;
 pemx_ctl.s.cfg_rtry = 0;
 cvmx_write_csr(CVMX_PEMX_CTL_STATUS(1), pemx_ctl.u64);
 return retry_cnt;
}
