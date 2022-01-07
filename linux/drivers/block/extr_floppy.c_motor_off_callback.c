
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int FDC (unsigned long) ;
 unsigned long N_DRIVE ;
 int UNIT (unsigned long) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct timer_list* motor_off_timer ;
 int set_dor (int ,unsigned char,int ) ;

__attribute__((used)) static void motor_off_callback(struct timer_list *t)
{
 unsigned long nr = t - motor_off_timer;
 unsigned char mask = ~(0x10 << UNIT(nr));

 if (WARN_ON_ONCE(nr >= N_DRIVE))
  return;

 set_dor(FDC(nr), mask, 0);
}
