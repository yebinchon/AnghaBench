
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int pr_debug (char*) ;
 int rebuild_sched_domains () ;
 int update_topology ;

__attribute__((used)) static void update_topology_flags_workfn(struct work_struct *work)
{
 update_topology = 1;
 rebuild_sched_domains();
 pr_debug("sched_domain hierarchy rebuilt, flags updated\n");
 update_topology = 0;
}
