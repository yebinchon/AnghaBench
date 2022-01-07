
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long size; } ;
struct TYPE_3__ {scalar_t__ addr; } ;
struct optimized_kprobe {TYPE_2__ optinsn; TYPE_1__ kp; } ;



int arch_within_optimized_kprobe(struct optimized_kprobe *op,
     unsigned long addr)
{
 return ((unsigned long)op->kp.addr <= addr &&
  (unsigned long)op->kp.addr + op->optinsn.size > addr);
}
