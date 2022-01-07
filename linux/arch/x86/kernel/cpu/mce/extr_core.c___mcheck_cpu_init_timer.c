
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int TIMER_PINNED ;
 int mce_start_timer (struct timer_list*) ;
 int mce_timer ;
 int mce_timer_fn ;
 struct timer_list* this_cpu_ptr (int *) ;
 int timer_setup (struct timer_list*,int ,int ) ;

__attribute__((used)) static void __mcheck_cpu_init_timer(void)
{
 struct timer_list *t = this_cpu_ptr(&mce_timer);

 timer_setup(t, mce_timer_fn, TIMER_PINNED);
 mce_start_timer(t);
}
