
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {unsigned long cp0_status; unsigned long cp0_epc; unsigned long* regs; } ;
struct TYPE_3__ {int bd_emu_frame; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int BD_EMUFRAME_NONE ;
 unsigned long KU_MASK ;
 unsigned long KU_USER ;
 unsigned long ST0_CU0 ;
 unsigned long ST0_CU1 ;
 unsigned long ST0_FR ;
 int TIF_MSA_CTX_LIVE ;
 int atomic_set (int *,int ) ;
 int clear_thread_flag (int ) ;
 int clear_used_math () ;
 TYPE_2__* current ;
 int init_dsp () ;
 int lose_fpu (int ) ;

void start_thread(struct pt_regs * regs, unsigned long pc, unsigned long sp)
{
 unsigned long status;


 status = regs->cp0_status & ~(ST0_CU0|ST0_CU1|ST0_FR|KU_MASK);
 status |= KU_USER;
 regs->cp0_status = status;
 lose_fpu(0);
 clear_thread_flag(TIF_MSA_CTX_LIVE);
 clear_used_math();
 atomic_set(&current->thread.bd_emu_frame, BD_EMUFRAME_NONE);
 init_dsp();
 regs->cp0_epc = pc;
 regs->regs[29] = sp;
}
