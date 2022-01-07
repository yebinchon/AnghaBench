
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int load_direct_gdt (int) ;
 int load_percpu_segment (int) ;

void switch_to_new_gdt(int cpu)
{

 load_direct_gdt(cpu);

 load_percpu_segment(cpu);
}
