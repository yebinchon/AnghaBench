
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MACHINE_HAS_TOPOLOGY ;
 int atomic_add (int,int *) ;
 int atomic_read (int *) ;
 int set_topology_timer () ;
 int topology_poll ;

void topology_expect_change(void)
{
 if (!MACHINE_HAS_TOPOLOGY)
  return;



 if (atomic_read(&topology_poll) > 60)
  return;
 atomic_add(60, &topology_poll);
 set_topology_timer();
}
