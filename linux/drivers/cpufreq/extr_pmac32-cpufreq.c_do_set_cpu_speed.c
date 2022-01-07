
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int CPUFREQ_HIGH ;
 int CPUFREQ_LOW ;
 int CPU_FTR_L3CR ;
 unsigned long L3CR_L3E ;
 unsigned long _get_L3CR () ;
 int _set_L3CR (unsigned long) ;
 scalar_t__ cpu_has_feature (int ) ;
 int cur_freq ;
 int hi_freq ;
 int low_freq ;
 int set_speed_proc (int) ;

__attribute__((used)) static int do_set_cpu_speed(struct cpufreq_policy *policy, int speed_mode)
{
 unsigned long l3cr;
 static unsigned long prev_l3cr;

 if (speed_mode == CPUFREQ_LOW &&
     cpu_has_feature(CPU_FTR_L3CR)) {
  l3cr = _get_L3CR();
  if (l3cr & L3CR_L3E) {
   prev_l3cr = l3cr;
   _set_L3CR(0);
  }
 }
 set_speed_proc(speed_mode == CPUFREQ_LOW);
 if (speed_mode == CPUFREQ_HIGH &&
     cpu_has_feature(CPU_FTR_L3CR)) {
  l3cr = _get_L3CR();
  if ((prev_l3cr & L3CR_L3E) && l3cr != prev_l3cr)
   _set_L3CR(prev_l3cr);
 }
 cur_freq = (speed_mode == CPUFREQ_HIGH) ? hi_freq : low_freq;

 return 0;
}
