
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int atomic_set (int *,int) ;
 int kernel_active_single_step () ;
 int kernel_disable_single_step () ;
 int kernel_enable_single_step (struct pt_regs*) ;
 int kgdb_arch_update_addr (struct pt_regs*,char*) ;
 int kgdb_cpu_doing_single_step ;
 int kgdb_single_step ;
 int raw_smp_processor_id () ;

int kgdb_arch_handle_exception(int exception_vector, int signo,
          int err_code, char *remcom_in_buffer,
          char *remcom_out_buffer,
          struct pt_regs *linux_regs)
{
 int err;

 switch (remcom_in_buffer[0]) {
 case 'D':
 case 'k':




 case 'c':
  kgdb_arch_update_addr(linux_regs, remcom_in_buffer);
  atomic_set(&kgdb_cpu_doing_single_step, -1);
  kgdb_single_step = 0;




  if (kernel_active_single_step())
   kernel_disable_single_step();

  err = 0;
  break;
 case 's':
  kgdb_arch_update_addr(linux_regs, remcom_in_buffer);
  atomic_set(&kgdb_cpu_doing_single_step, raw_smp_processor_id());
  kgdb_single_step = 1;




  if (!kernel_active_single_step())
   kernel_enable_single_step(linux_regs);
  err = 0;
  break;
 default:
  err = -1;
 }
 return err;
}
