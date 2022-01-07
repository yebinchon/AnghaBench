
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_x86 {unsigned int initial_apicid; unsigned int cpu_core_id; unsigned int cpu_die_id; unsigned int phys_proc_id; unsigned int apicid; unsigned int x86_max_cores; } ;
struct TYPE_2__ {unsigned int (* phys_pkg_id ) (unsigned int,unsigned int) ;} ;


 unsigned int BITS_SHIFT_NEXT_LEVEL (unsigned int) ;
 scalar_t__ CORE_TYPE ;
 scalar_t__ DIE_TYPE ;
 scalar_t__ INVALID_TYPE ;
 scalar_t__ LEAFB_SUBTYPE (unsigned int) ;
 unsigned int LEVEL_MAX_SIBLINGS (unsigned int) ;
 unsigned int SMT_LEVEL ;
 unsigned int __max_die_per_package ;
 TYPE_1__* apic ;
 int cpuid_count (int,unsigned int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int detect_extended_topology_leaf (struct cpuinfo_x86*) ;
 unsigned int smp_num_siblings ;
 unsigned int stub1 (unsigned int,unsigned int) ;
 unsigned int stub2 (unsigned int,unsigned int) ;
 unsigned int stub3 (unsigned int,unsigned int) ;
 unsigned int stub4 (unsigned int,unsigned int) ;

int detect_extended_topology(struct cpuinfo_x86 *c)
{
 return 0;
}
