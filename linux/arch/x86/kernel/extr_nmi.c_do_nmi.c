
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int sp; } ;


 int CONFIG_SMP ;
 scalar_t__ IS_ENABLED (int ) ;
 int NMI_EXECUTING ;
 int NMI_LATCHED ;
 scalar_t__ NMI_NOT_RUNNING ;
 int __nmi_count ;
 scalar_t__ cpu_is_offline (int ) ;
 int debug_stack_reset () ;
 int debug_stack_set_zero () ;
 int default_do_nmi (struct pt_regs*) ;
 int ignore_nmis ;
 int inc_irq_stat (int ) ;
 int is_debug_stack (int ) ;
 int mds_user_clear_cpu_buffers () ;
 int nmi_cr2 ;
 int nmi_enter () ;
 int nmi_exit () ;
 int nmi_state ;
 scalar_t__ read_cr2 () ;
 int smp_processor_id () ;
 scalar_t__ this_cpu_dec_return (int ) ;
 scalar_t__ this_cpu_read (int ) ;
 int this_cpu_write (int ,int) ;
 scalar_t__ unlikely (int) ;
 int update_debug_stack ;
 scalar_t__ user_mode (struct pt_regs*) ;
 int write_cr2 (scalar_t__) ;

void
do_nmi(struct pt_regs *regs, long error_code)
{
 if (IS_ENABLED(CONFIG_SMP) && cpu_is_offline(smp_processor_id()))
  return;

 if (this_cpu_read(nmi_state) != NMI_NOT_RUNNING) {
  this_cpu_write(nmi_state, NMI_LATCHED);
  return;
 }
 this_cpu_write(nmi_state, NMI_EXECUTING);
 this_cpu_write(nmi_cr2, read_cr2());
nmi_restart:
 nmi_enter();

 inc_irq_stat(__nmi_count);

 if (!ignore_nmis)
  default_do_nmi(regs);

 nmi_exit();
 if (unlikely(this_cpu_read(nmi_cr2) != read_cr2()))
  write_cr2(this_cpu_read(nmi_cr2));
 if (this_cpu_dec_return(nmi_state))
  goto nmi_restart;

 if (user_mode(regs))
  mds_user_clear_cpu_buffers();
}
