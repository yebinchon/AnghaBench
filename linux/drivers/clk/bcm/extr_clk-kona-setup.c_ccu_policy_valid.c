
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_policy_ctl {int ac_bit; int atl_bit; int go_bit; } ;
struct bcm_lvm_en {int bit; } ;
struct ccu_policy {struct bcm_policy_ctl control; struct bcm_lvm_en enable; } ;


 int bit_posn_valid (int ,char*,char const*) ;

__attribute__((used)) static bool
ccu_policy_valid(struct ccu_policy *ccu_policy, const char *ccu_name)
{
 struct bcm_lvm_en *enable = &ccu_policy->enable;
 struct bcm_policy_ctl *control;

 if (!bit_posn_valid(enable->bit, "policy enable", ccu_name))
  return 0;

 control = &ccu_policy->control;
 if (!bit_posn_valid(control->go_bit, "policy control GO", ccu_name))
  return 0;

 if (!bit_posn_valid(control->atl_bit, "policy control ATL", ccu_name))
  return 0;

 if (!bit_posn_valid(control->ac_bit, "policy control AC", ccu_name))
  return 0;

 return 1;
}
