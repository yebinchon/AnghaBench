
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vtimer_list {int dummy; } ;


 int __mod_vtimer (struct vtimer_list*,int ,int) ;

int mod_virt_timer_periodic(struct vtimer_list *timer, u64 expires)
{
 return __mod_vtimer(timer, expires, 1);
}
