
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu_device {int needs_update; int tick_wakeup; } ;
struct cpuidle_device {int last_state_idx; } ;


 int menu_devices ;
 struct menu_device* this_cpu_ptr (int *) ;
 int tick_nohz_idle_got_tick () ;

__attribute__((used)) static void menu_reflect(struct cpuidle_device *dev, int index)
{
 struct menu_device *data = this_cpu_ptr(&menu_devices);

 dev->last_state_idx = index;
 data->needs_update = 1;
 data->tick_wakeup = tick_nohz_idle_got_tick();
}
