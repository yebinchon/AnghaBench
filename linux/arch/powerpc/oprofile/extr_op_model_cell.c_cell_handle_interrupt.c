
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct op_counter_config {int dummy; } ;


 scalar_t__ PPU_PROFILING ;
 int cell_handle_interrupt_ppu (struct pt_regs*,struct op_counter_config*) ;
 int cell_handle_interrupt_spu (struct pt_regs*,struct op_counter_config*) ;
 scalar_t__ profiling_mode ;

__attribute__((used)) static void cell_handle_interrupt(struct pt_regs *regs,
      struct op_counter_config *ctr)
{
 if (profiling_mode == PPU_PROFILING)
  cell_handle_interrupt_ppu(regs, ctr);
 else
  cell_handle_interrupt_spu(regs, ctr);
}
