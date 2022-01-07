
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct push_switch {int work; } ;


 int debounce ;
 struct push_switch* from_timer (int ,struct timer_list*,int ) ;
 struct push_switch* psw ;
 int schedule_work (int *) ;

__attribute__((used)) static void switch_timer(struct timer_list *t)
{
 struct push_switch *psw = from_timer(psw, t, debounce);

 schedule_work(&psw->work);
}
