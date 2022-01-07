
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int mce_device_create (unsigned int) ;
 int mce_device_remove (unsigned int) ;
 int mce_reenable_cpu () ;
 int mce_start_timer (struct timer_list*) ;
 int mce_threshold_create_device (unsigned int) ;
 int mce_timer ;
 struct timer_list* this_cpu_ptr (int *) ;

__attribute__((used)) static int mce_cpu_online(unsigned int cpu)
{
 struct timer_list *t = this_cpu_ptr(&mce_timer);
 int ret;

 mce_device_create(cpu);

 ret = mce_threshold_create_device(cpu);
 if (ret) {
  mce_device_remove(cpu);
  return ret;
 }
 mce_reenable_cpu();
 mce_start_timer(t);
 return 0;
}
