
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ s64 ;
typedef int __be32 ;


 int EIO ;
 int be32_to_cpu (int ) ;
 scalar_t__ opal_xive_get_queue_state (int ,int ,int *,int *) ;
 int pr_err (char*,int ,int ,scalar_t__) ;

int xive_native_get_queue_state(u32 vp_id, u32 prio, u32 *qtoggle, u32 *qindex)
{
 __be32 opal_qtoggle;
 __be32 opal_qindex;
 s64 rc;

 rc = opal_xive_get_queue_state(vp_id, prio, &opal_qtoggle,
           &opal_qindex);
 if (rc) {
  pr_err("OPAL failed to get queue state for VCPU %d/%d : %lld\n",
         vp_id, prio, rc);
  return -EIO;
 }

 if (qtoggle)
  *qtoggle = be32_to_cpu(opal_qtoggle);
 if (qindex)
  *qindex = be32_to_cpu(opal_qindex);

 return 0;
}
