
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ s64 ;


 int EIO ;
 scalar_t__ opal_xive_set_queue_state (int ,int ,int ,int ) ;
 int pr_err (char*,int ,int ,scalar_t__) ;

int xive_native_set_queue_state(u32 vp_id, u32 prio, u32 qtoggle, u32 qindex)
{
 s64 rc;

 rc = opal_xive_set_queue_state(vp_id, prio, qtoggle, qindex);
 if (rc) {
  pr_err("OPAL failed to set queue state for VCPU %d/%d : %lld\n",
         vp_id, prio, rc);
  return -EIO;
 }

 return 0;
}
