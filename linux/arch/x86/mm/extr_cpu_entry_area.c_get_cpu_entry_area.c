
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_entry_area {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int CPU_ENTRY_AREA_PER_CPU ;
 int CPU_ENTRY_AREA_SIZE ;
 int PAGE_SIZE ;

struct cpu_entry_area *get_cpu_entry_area(int cpu)
{
 unsigned long va = CPU_ENTRY_AREA_PER_CPU + cpu * CPU_ENTRY_AREA_SIZE;
 BUILD_BUG_ON(sizeof(struct cpu_entry_area) % PAGE_SIZE != 0);

 return (struct cpu_entry_area *) va;
}
