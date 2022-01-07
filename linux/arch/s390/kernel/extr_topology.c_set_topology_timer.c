
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 scalar_t__ atomic_add_unless (int *,int,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int topology_poll ;
 int topology_timer ;

__attribute__((used)) static void set_topology_timer(void)
{
 if (atomic_add_unless(&topology_poll, -1, 0))
  mod_timer(&topology_timer, jiffies + HZ / 10);
 else
  mod_timer(&topology_timer, jiffies + HZ * 60);
}
