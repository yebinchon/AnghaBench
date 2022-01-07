
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_x86 {int phys_proc_id; int x86_max_cores; int cpu_core_id; int initial_apicid; } ;
struct TYPE_2__ {int (* phys_pkg_id ) (int ,int) ;} ;


 TYPE_1__* apic ;
 scalar_t__ detect_ht_early (struct cpuinfo_x86*) ;
 int get_count_order (int) ;
 int smp_num_siblings ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

void detect_ht(struct cpuinfo_x86 *c)
{
}
