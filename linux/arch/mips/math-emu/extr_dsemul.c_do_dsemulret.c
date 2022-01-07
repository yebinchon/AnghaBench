
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int cp0_epc; } ;
struct TYPE_4__ {int bd_emu_cont_pc; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;


 int MIPS_FPU_EMU_INC_STATS (int ) ;
 TYPE_2__* current ;
 int ds_emul ;
 int dsemul_thread_cleanup (TYPE_2__*) ;
 int errors ;
 int pr_debug (char*,int ) ;

bool do_dsemulret(struct pt_regs *xcp)
{

 if (!dsemul_thread_cleanup(current)) {
  MIPS_FPU_EMU_INC_STATS(errors);
  return 0;
 }


 xcp->cp0_epc = current->thread.bd_emu_cont_pc;
 pr_debug("dsemulret to 0x%08lx\n", xcp->cp0_epc);
 MIPS_FPU_EMU_INC_STATS(ds_emul);
 return 1;
}
