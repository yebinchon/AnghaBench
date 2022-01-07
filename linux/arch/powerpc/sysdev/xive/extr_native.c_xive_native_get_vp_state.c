
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ s64 ;
typedef int __be64 ;


 int EIO ;
 int be64_to_cpu (int ) ;
 scalar_t__ opal_xive_get_vp_state (int ,int *) ;
 int pr_err (char*,int ,scalar_t__) ;

int xive_native_get_vp_state(u32 vp_id, u64 *out_state)
{
 __be64 state;
 s64 rc;

 rc = opal_xive_get_vp_state(vp_id, &state);
 if (rc) {
  pr_err("OPAL failed to get vp state for VCPU %d : %lld\n",
         vp_id, rc);
  return -EIO;
 }

 if (out_state)
  *out_state = be64_to_cpu(state);
 return 0;
}
