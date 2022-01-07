
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xive_cpu {int dummy; } ;
typedef scalar_t__ s64 ;


 scalar_t__ OPAL_BUSY ;
 int OPAL_BUSY_DELAY_MS ;
 scalar_t__ TM_SPC_PULL_POOL_CTX ;
 scalar_t__ XIVE_INVALID_VP ;
 int in_be64 (scalar_t__) ;
 int msleep (int ) ;
 scalar_t__ opal_xive_set_vp_info (scalar_t__,int ,int ) ;
 scalar_t__ xive_pool_vps ;
 scalar_t__ xive_tima ;

__attribute__((used)) static void xive_native_teardown_cpu(unsigned int cpu, struct xive_cpu *xc)
{
 s64 rc;
 u32 vp;

 if (xive_pool_vps == XIVE_INVALID_VP)
  return;


 in_be64(xive_tima + TM_SPC_PULL_POOL_CTX);


 vp = xive_pool_vps + cpu;
 for (;;) {
  rc = opal_xive_set_vp_info(vp, 0, 0);
  if (rc != OPAL_BUSY)
   break;
  msleep(OPAL_BUSY_DELAY_MS);
 }
}
