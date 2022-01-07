
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_clk_policy {int bit; } ;


 int bit_posn_valid (int ,char*,char const*) ;

__attribute__((used)) static bool policy_valid(struct bcm_clk_policy *policy, const char *clock_name)
{
 if (!bit_posn_valid(policy->bit, "policy", clock_name))
  return 0;

 return 1;
}
