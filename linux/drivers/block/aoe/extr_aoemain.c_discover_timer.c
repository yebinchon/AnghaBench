
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int HZ ;
 int aoecmd_cfg (int,int) ;
 scalar_t__ jiffies ;
 int mod_timer (struct timer_list*,scalar_t__) ;

__attribute__((used)) static void discover_timer(struct timer_list *t)
{
 mod_timer(t, jiffies + HZ * 60);

 aoecmd_cfg(0xffff, 0xff);
}
