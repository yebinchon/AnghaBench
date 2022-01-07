
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine_check_event {scalar_t__ in_use; } ;


 int MAX_MC_EVT ;
 int __this_cpu_dec (int ) ;
 int __this_cpu_read (int ) ;
 int * mce_event ;
 int mce_nest_count ;
 struct machine_check_event* this_cpu_ptr (int *) ;

int get_mce_event(struct machine_check_event *mce, bool release)
{
 int index = __this_cpu_read(mce_nest_count) - 1;
 struct machine_check_event *mc_evt;
 int ret = 0;


 if (index < 0)
  return ret;


 if (index < MAX_MC_EVT) {
  mc_evt = this_cpu_ptr(&mce_event[index]);

  if (mce)
   *mce = *mc_evt;
  if (release)
   mc_evt->in_use = 0;
  ret = 1;
 }

 if (release)
  __this_cpu_dec(mce_nest_count);

 return ret;
}
