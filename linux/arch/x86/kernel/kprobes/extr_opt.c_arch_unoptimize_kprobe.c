
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int insn; int copied_insn; } ;
struct TYPE_3__ {int addr; } ;
struct optimized_kprobe {TYPE_2__ optinsn; TYPE_1__ kp; } ;


 int BREAKPOINT_INSTRUCTION ;
 int RELATIVEJUMP_SIZE ;
 int RELATIVE_ADDR_SIZE ;
 int memcpy (int *,int ,int ) ;
 int text_poke_bp (int ,int *,int,int ) ;

void arch_unoptimize_kprobe(struct optimized_kprobe *op)
{
 u8 insn_buff[RELATIVEJUMP_SIZE];


 insn_buff[0] = BREAKPOINT_INSTRUCTION;
 memcpy(insn_buff + 1, op->optinsn.copied_insn, RELATIVE_ADDR_SIZE);
 text_poke_bp(op->kp.addr, insn_buff, RELATIVEJUMP_SIZE,
       op->optinsn.insn);
}
