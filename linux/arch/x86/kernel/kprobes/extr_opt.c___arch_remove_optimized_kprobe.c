
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; int * insn; } ;
struct optimized_kprobe {TYPE_1__ optinsn; } ;


 int free_optinsn_slot (int *,int) ;

__attribute__((used)) static
void __arch_remove_optimized_kprobe(struct optimized_kprobe *op, int dirty)
{
 if (op->optinsn.insn) {
  free_optinsn_slot(op->optinsn.insn, dirty);
  op->optinsn.insn = ((void*)0);
  op->optinsn.size = 0;
 }
}
