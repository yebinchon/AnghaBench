
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int del_timer_sync (struct timer_list*) ;
 int mce_device_remove (unsigned int) ;
 int mce_disable_cpu () ;
 int mce_threshold_remove_device (unsigned int) ;
 int mce_timer ;
 struct timer_list* this_cpu_ptr (int *) ;

__attribute__((used)) static int mce_cpu_pre_down(unsigned int cpu)
{
 struct timer_list *t = this_cpu_ptr(&mce_timer);

 mce_disable_cpu();
 del_timer_sync(t);
 mce_threshold_remove_device(cpu);
 mce_device_remove(cpu);
 return 0;
}
