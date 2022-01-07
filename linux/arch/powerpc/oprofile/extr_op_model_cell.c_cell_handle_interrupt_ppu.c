
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pt_regs {int nip; } ;
struct op_counter_config {scalar_t__ enabled; } ;


 int CBE_PM_CTR_OVERFLOW_INTR (int) ;
 int cbe_disable_pm (int) ;
 int cbe_enable_pm (int) ;
 int cbe_enable_pm_interrupts (int,int ,int ) ;
 int cbe_get_and_clear_pm_interrupts (int) ;
 int cbe_write_ctr (int,int,int ) ;
 int cntr_lock ;
 int hdw_thread ;
 int is_kernel_addr (int ) ;
 int num_counters ;
 int oprofile_add_ext_sample (int ,struct pt_regs*,int,int) ;
 int oprofile_running ;
 int * reset_value ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virt_cntr_inter_mask ;

__attribute__((used)) static void cell_handle_interrupt_ppu(struct pt_regs *regs,
          struct op_counter_config *ctr)
{
 u32 cpu;
 u64 pc;
 int is_kernel;
 unsigned long flags = 0;
 u32 interrupt_mask;
 int i;

 cpu = smp_processor_id();






 spin_lock_irqsave(&cntr_lock, flags);







 cbe_disable_pm(cpu);

 interrupt_mask = cbe_get_and_clear_pm_interrupts(cpu);
 if ((oprofile_running == 1) && (interrupt_mask != 0)) {
  pc = regs->nip;
  is_kernel = is_kernel_addr(pc);

  for (i = 0; i < num_counters; ++i) {
   if ((interrupt_mask & CBE_PM_CTR_OVERFLOW_INTR(i))
       && ctr[i].enabled) {
    oprofile_add_ext_sample(pc, regs, i, is_kernel);
    cbe_write_ctr(cpu, i, reset_value[i]);
   }
  }
  cbe_enable_pm_interrupts(cpu, hdw_thread,
      virt_cntr_inter_mask);
  cbe_enable_pm(cpu);
 }
 spin_unlock_irqrestore(&cntr_lock, flags);
}
