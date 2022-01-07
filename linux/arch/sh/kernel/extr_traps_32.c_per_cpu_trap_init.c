
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_bl_bit () ;

void per_cpu_trap_init(void)
{
 extern void *vbr_base;





 asm volatile("ldc	%0, vbr"
       :
       : "r" (&vbr_base)
       : "memory");


 clear_bl_bit();
}
