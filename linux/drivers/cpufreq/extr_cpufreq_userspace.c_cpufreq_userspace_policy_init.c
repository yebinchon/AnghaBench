
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {unsigned int* governor_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int* kzalloc (int,int ) ;

__attribute__((used)) static int cpufreq_userspace_policy_init(struct cpufreq_policy *policy)
{
 unsigned int *setspeed;

 setspeed = kzalloc(sizeof(*setspeed), GFP_KERNEL);
 if (!setspeed)
  return -ENOMEM;

 policy->governor_data = setspeed;
 return 0;
}
