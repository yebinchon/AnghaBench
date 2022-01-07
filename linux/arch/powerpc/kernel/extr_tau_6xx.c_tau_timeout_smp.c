
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int on_each_cpu (int ,int *,int ) ;
 scalar_t__ shrink_timer ;
 int tau_timeout ;
 int tau_timer ;

__attribute__((used)) static void tau_timeout_smp(struct timer_list *unused)
{


 mod_timer(&tau_timer, jiffies + shrink_timer) ;
 on_each_cpu(tau_timeout, ((void*)0), 0);
}
