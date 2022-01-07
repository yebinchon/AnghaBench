
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;
struct TYPE_2__ {int mask; int val; } ;


 int power9_idle_type (int ,int ) ;
 TYPE_1__* stop_psscr_table ;

__attribute__((used)) static int stop_loop(struct cpuidle_device *dev,
       struct cpuidle_driver *drv,
       int index)
{
 power9_idle_type(stop_psscr_table[index].val,
    stop_psscr_table[index].mask);
 return index;
}
