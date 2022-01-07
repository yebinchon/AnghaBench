
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int cmm_kick_thread () ;
 int cmm_set_timer () ;
 long cmm_timed_pages_target ;
 long cmm_timeout_pages ;

__attribute__((used)) static void cmm_timer_fn(struct timer_list *unused)
{
 long nr;

 nr = cmm_timed_pages_target - cmm_timeout_pages;
 if (nr < 0)
  cmm_timed_pages_target = 0;
 else
  cmm_timed_pages_target = nr;
 cmm_kick_thread();
 cmm_set_timer();
}
