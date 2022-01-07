
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * insn; } ;
struct optimized_kprobe {TYPE_1__ optinsn; } ;


 int free_ppc_optinsn_slot (int *,int) ;

void arch_remove_optimized_kprobe(struct optimized_kprobe *op)
{
 if (op->optinsn.insn) {
  free_ppc_optinsn_slot(op->optinsn.insn, 1);
  op->optinsn.insn = ((void*)0);
 }
}
