
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {scalar_t__ cpu; TYPE_1__* freq_table; } ;
struct TYPE_2__ {unsigned int frequency; } ;


 int EINVAL ;
 int ENODEV ;
 size_t SPEEDSTEP_HIGH ;
 size_t SPEEDSTEP_LOW ;
 int pr_debug (char*) ;
 TYPE_1__* speedstep_freqs ;
 int speedstep_get_freqs (int ,unsigned int*,unsigned int*,int *,int *) ;
 int speedstep_processor ;
 int speedstep_set_state ;
 int speedstep_smi_get_freqs (unsigned int*,unsigned int*) ;
 int speedstep_smi_ownership () ;

__attribute__((used)) static int speedstep_cpu_init(struct cpufreq_policy *policy)
{
 int result;
 unsigned int *low, *high;


 if (policy->cpu != 0)
  return -ENODEV;

 result = speedstep_smi_ownership();
 if (result) {
  pr_debug("fails in acquiring ownership of a SMI interface.\n");
  return -EINVAL;
 }


 low = &speedstep_freqs[SPEEDSTEP_LOW].frequency;
 high = &speedstep_freqs[SPEEDSTEP_HIGH].frequency;

 result = speedstep_smi_get_freqs(low, high);
 if (result) {


  pr_debug("could not detect low and high frequencies "
    "by SMI call.\n");
  result = speedstep_get_freqs(speedstep_processor,
    low, high,
    ((void*)0),
    &speedstep_set_state);

  if (result) {
   pr_debug("could not detect two different speeds"
     " -- aborting.\n");
   return result;
  } else
   pr_debug("workaround worked.\n");
 }

 policy->freq_table = speedstep_freqs;

 return 0;
}
