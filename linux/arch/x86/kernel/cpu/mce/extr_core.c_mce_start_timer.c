
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ ignore_ce; } ;


 unsigned long HZ ;
 int __start_timer (struct timer_list*,unsigned long) ;
 unsigned long check_interval ;
 TYPE_1__ mca_cfg ;
 int mce_next_interval ;
 int this_cpu_write (int ,unsigned long) ;

__attribute__((used)) static void mce_start_timer(struct timer_list *t)
{
 unsigned long iv = check_interval * HZ;

 if (mca_cfg.ignore_ce || !iv)
  return;

 this_cpu_write(mce_next_interval, iv);
 __start_timer(t, iv);
}
