
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct desc_ptr {long address; scalar_t__ size; } ;


 scalar_t__ GDT_SIZE ;
 scalar_t__ get_cpu_gdt_rw (int) ;
 int load_gdt (struct desc_ptr*) ;

void load_direct_gdt(int cpu)
{
 struct desc_ptr gdt_descr;

 gdt_descr.address = (long)get_cpu_gdt_rw(cpu);
 gdt_descr.size = GDT_SIZE - 1;
 load_gdt(&gdt_descr);
}
