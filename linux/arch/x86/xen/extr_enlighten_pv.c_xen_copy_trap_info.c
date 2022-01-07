
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trap_info {int dummy; } ;
struct desc_ptr {int dummy; } ;


 int idt_desc ;
 struct desc_ptr* this_cpu_ptr (int *) ;
 int xen_convert_trap_info (struct desc_ptr const*,struct trap_info*) ;

void xen_copy_trap_info(struct trap_info *traps)
{
 const struct desc_ptr *desc = this_cpu_ptr(&idt_desc);

 xen_convert_trap_info(desc, traps);
}
