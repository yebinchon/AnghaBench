
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int PTF_CHECK ;
 scalar_t__ ptf (int ) ;
 int set_topology_timer () ;
 int topology_schedule_update () ;

__attribute__((used)) static void topology_timer_fn(struct timer_list *unused)
{
 if (ptf(PTF_CHECK))
  topology_schedule_update();
 set_topology_timer();
}
