
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long nip; int msr; int trap; } ;
struct bpt {unsigned long address; int * instr; int ref_count; } ;


 char* BP_NUM (struct bpt*) ;
 int EOF ;
 scalar_t__ IS_RFID (int ) ;
 int JMP_BUF_LEN ;
 int MSR_64BIT ;
 int MSR_DE ;
 int MSR_IR ;
 int MSR_PR ;
 int TRAP (struct pt_regs*) ;
 struct bpt* at_breakpoint (unsigned long) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int barrier () ;
 long* bus_error_jmp ;
 scalar_t__ catch_spr_faults ;
 int cmds (struct pt_regs*) ;
 int cpumask_clear_cpu (int,int *) ;
 int cpumask_set_cpu (int,int *) ;
 scalar_t__ cpumask_test_cpu (int,int *) ;
 int cpus_in_xmon ;
 int disable_surveillance () ;
 int emulate_step (struct pt_regs*,int ) ;
 int excprint (struct pt_regs*) ;
 int get_output_lock () ;
 int getvecname (int) ;
 int hard_irq_disable () ;
 struct bpt* in_breakpoint_table (unsigned long,unsigned long*) ;
 int in_xmon ;
 int insert_bpts () ;
 int insert_cpu_bpts () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int longjmp (long*,int) ;
 int mb () ;
 int num_online_cpus () ;
 int ppc_inst_dump (unsigned long,int,int ) ;
 int printf (char*,...) ;
 int release_output_lock () ;
 int remove_bpts () ;
 int remove_cpu_bpts () ;
 scalar_t__ setjmp (long*) ;
 int smp_processor_id () ;
 int smp_send_debugger_break () ;
 int spin_begin () ;
 int spin_cpu_relax () ;
 int spin_end () ;
 int test_and_set_bit (int ,int*) ;
 int touch_nmi_watchdog () ;
 int tracing_enabled ;
 int tracing_is_on () ;
 int tracing_off () ;
 scalar_t__ unrecoverable_excp (struct pt_regs*) ;
 int wait_for_other_cpus (int) ;
 int wmb () ;
 long** xmon_fault_jmp ;
 int xmon_gate ;
 int xmon_owner ;
 int xmon_print_symbol (unsigned long,char*,char*) ;
 int xmon_taken ;

__attribute__((used)) static int xmon_core(struct pt_regs *regs, int fromipi)
{
 int cmd = 0;
 struct bpt *bp;
 long recurse_jmp[JMP_BUF_LEN];
 unsigned long offset;
 unsigned long flags;





 local_irq_save(flags);
 hard_irq_disable();

 if (!fromipi) {
  tracing_enabled = tracing_is_on();
  tracing_off();
 }

 bp = in_breakpoint_table(regs->nip, &offset);
 if (bp != ((void*)0)) {
  regs->nip = bp->address + offset;
  atomic_dec(&bp->ref_count);
 }

 remove_cpu_bpts();
 if (in_xmon) {
  printf("Exception %lx %s in xmon, returning to main loop\n",
         regs->trap, getvecname(TRAP(regs)));
  longjmp(xmon_fault_jmp[0], 1);
 }
 if (setjmp(recurse_jmp) == 0) {
  xmon_fault_jmp[0] = recurse_jmp;
  in_xmon = 1;

  excprint(regs);
  bp = at_breakpoint(regs->nip);
  if (bp) {
   printf("Stopped at breakpoint %tx (", BP_NUM(bp));
   xmon_print_symbol(regs->nip, " ", ")\n");
  }
  if (unrecoverable_excp(regs))
   printf("WARNING: exception is not recoverable, "
          "can't continue\n");
  remove_bpts();
  disable_surveillance();

  if (bp || TRAP(regs) == 0xd00)
   ppc_inst_dump(regs->nip, 1, 0);
  printf("enter ? for help\n");
 }

 cmd = cmds(regs);

 insert_bpts();
 in_xmon = 0;
 if ((regs->msr & (MSR_IR|MSR_PR|MSR_64BIT)) == (MSR_IR|MSR_64BIT)) {
  bp = at_breakpoint(regs->nip);
  if (bp != ((void*)0)) {
   int stepped = emulate_step(regs, bp->instr[0]);
   if (stepped == 0) {
    regs->nip = (unsigned long) &bp->instr[0];
    atomic_inc(&bp->ref_count);
   } else if (stepped < 0) {
    printf("Couldn't single-step %s instruction\n",
        (IS_RFID(bp->instr[0])? "rfid": "mtmsrd"));
   }
  }
 }

 insert_cpu_bpts();

 touch_nmi_watchdog();
 local_irq_restore(flags);

 return cmd != 'X' && cmd != EOF;
}
