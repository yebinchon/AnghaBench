
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr; } ;
struct optimized_kprobe {TYPE_1__ kp; } ;


 unsigned long RELATIVEJUMP_SIZE ;

int arch_within_optimized_kprobe(struct optimized_kprobe *op,
     unsigned long addr)
{
 return ((unsigned long)op->kp.addr <= addr &&
  (unsigned long)op->kp.addr + RELATIVEJUMP_SIZE > addr);
}
