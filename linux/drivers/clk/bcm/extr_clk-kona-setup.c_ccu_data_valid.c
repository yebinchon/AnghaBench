
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccu_policy {int dummy; } ;
struct ccu_data {int name; struct ccu_policy policy; } ;


 int ccu_data_offsets_valid (struct ccu_data*) ;
 scalar_t__ ccu_policy_exists (struct ccu_policy*) ;
 int ccu_policy_valid (struct ccu_policy*,int ) ;

__attribute__((used)) static bool ccu_data_valid(struct ccu_data *ccu)
{
 struct ccu_policy *ccu_policy;

 if (!ccu_data_offsets_valid(ccu))
  return 0;

 ccu_policy = &ccu->policy;
 if (ccu_policy_exists(ccu_policy))
  if (!ccu_policy_valid(ccu_policy, ccu->name))
   return 0;

 return 1;
}
