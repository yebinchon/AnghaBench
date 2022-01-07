
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtimer_list {scalar_t__ expires; int entry; } ;
typedef scalar_t__ s64 ;


 scalar_t__ atomic64_read (int *) ;
 int atomic64_set (int *,scalar_t__) ;
 scalar_t__ likely (int) ;
 int list_add (int *,int *) ;
 int list_add_sorted (struct vtimer_list*,int *) ;
 scalar_t__ list_empty (int *) ;
 int virt_timer_current ;
 int virt_timer_elapsed ;
 int virt_timer_list ;

__attribute__((used)) static void internal_add_vtimer(struct vtimer_list *timer)
{
 if (list_empty(&virt_timer_list)) {

  atomic64_set(&virt_timer_current, timer->expires);
  atomic64_set(&virt_timer_elapsed, 0);
  list_add(&timer->entry, &virt_timer_list);
 } else {

  timer->expires += atomic64_read(&virt_timer_elapsed);
  if (likely((s64) timer->expires <
      (s64) atomic64_read(&virt_timer_current)))

   atomic64_set(&virt_timer_current, timer->expires);

  list_add_sorted(timer, &virt_timer_list);
 }
}
