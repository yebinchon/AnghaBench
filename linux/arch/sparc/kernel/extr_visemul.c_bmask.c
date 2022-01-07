
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int* gsr; } ;


 int RD (unsigned int) ;
 int RS1 (unsigned int) ;
 int RS2 (unsigned int) ;
 TYPE_1__* current_thread_info () ;
 unsigned long fetch_reg (int ,struct pt_regs*) ;
 int maybe_flush_windows (int ,int ,int ,int ) ;
 int store_reg (struct pt_regs*,unsigned long,int ) ;

__attribute__((used)) static void bmask(struct pt_regs *regs, unsigned int insn)
{
 unsigned long rs1, rs2, rd_val, gsr;

 maybe_flush_windows(RS1(insn), RS2(insn), RD(insn), 0);
 rs1 = fetch_reg(RS1(insn), regs);
 rs2 = fetch_reg(RS2(insn), regs);
 rd_val = rs1 + rs2;

 store_reg(regs, rd_val, RD(insn));

 gsr = current_thread_info()->gsr[0] & 0xffffffff;
 gsr |= rd_val << 32UL;
 current_thread_info()->gsr[0] = gsr;
}
