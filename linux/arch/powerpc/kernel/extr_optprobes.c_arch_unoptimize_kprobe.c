
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optimized_kprobe {int kp; } ;


 int arch_arm_kprobe (int *) ;

void arch_unoptimize_kprobe(struct optimized_kprobe *op)
{
 arch_arm_kprobe(&op->kp);
}
