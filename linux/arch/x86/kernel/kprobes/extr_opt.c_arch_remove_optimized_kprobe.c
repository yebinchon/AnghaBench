
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optimized_kprobe {int dummy; } ;


 int __arch_remove_optimized_kprobe (struct optimized_kprobe*,int) ;

void arch_remove_optimized_kprobe(struct optimized_kprobe *op)
{
 __arch_remove_optimized_kprobe(op, 1);
}
