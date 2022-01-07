
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct xive_cpu {int dummy; } ;
typedef scalar_t__ s64 ;
typedef int __be64 ;


 scalar_t__ OPAL_BUSY ;
 int OPAL_BUSY_DELAY_MS ;
 int OPAL_XIVE_VP_ENABLED ;
 int TM_QW2W2_VP ;
 scalar_t__ TM_QW2_HV_POOL ;
 scalar_t__ TM_SPC_PULL_POOL_CTX ;
 scalar_t__ TM_WORD0 ;
 scalar_t__ TM_WORD2 ;
 scalar_t__ XIVE_INVALID_VP ;
 int be64_to_cpu (int ) ;
 int in_be32 (scalar_t__) ;
 int in_be64 (scalar_t__) ;
 int msleep (int ) ;
 scalar_t__ opal_xive_get_vp_info (scalar_t__,int *,int *,int *,int *) ;
 scalar_t__ opal_xive_set_vp_info (scalar_t__,int ,int ) ;
 int out_be32 (scalar_t__,int) ;
 int pr_err (char*,unsigned int) ;
 scalar_t__ xive_pool_vps ;
 scalar_t__ xive_tima ;

__attribute__((used)) static void xive_native_setup_cpu(unsigned int cpu, struct xive_cpu *xc)
{
 s64 rc;
 u32 vp;
 __be64 vp_cam_be;
 u64 vp_cam;

 if (xive_pool_vps == XIVE_INVALID_VP)
  return;


 if (in_be32(xive_tima + TM_QW2_HV_POOL + TM_WORD2) & TM_QW2W2_VP)
  in_be64(xive_tima + TM_SPC_PULL_POOL_CTX);


 vp = xive_pool_vps + cpu;
 for (;;) {
  rc = opal_xive_set_vp_info(vp, OPAL_XIVE_VP_ENABLED, 0);
  if (rc != OPAL_BUSY)
   break;
  msleep(OPAL_BUSY_DELAY_MS);
 }
 if (rc) {
  pr_err("Failed to enable pool VP on CPU %d\n", cpu);
  return;
 }


 rc = opal_xive_get_vp_info(vp, ((void*)0), &vp_cam_be, ((void*)0), ((void*)0));
 if (rc) {
  pr_err("Failed to get pool VP info CPU %d\n", cpu);
  return;
 }
 vp_cam = be64_to_cpu(vp_cam_be);


 out_be32(xive_tima + TM_QW2_HV_POOL + TM_WORD0, 0xff);
 out_be32(xive_tima + TM_QW2_HV_POOL + TM_WORD2, TM_QW2W2_VP | vp_cam);
}
