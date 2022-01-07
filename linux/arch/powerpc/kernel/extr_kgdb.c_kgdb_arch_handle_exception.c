
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long nip; int msr; } ;


 int DBCR0_IC ;
 int DBCR0_IDM ;
 int MSR_DE ;
 int MSR_SE ;
 int SPRN_DBCR0 ;
 int atomic_set (int *,int) ;
 int kgdb_cpu_doing_single_step ;
 int kgdb_hex2long (char**,unsigned long*) ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int raw_smp_processor_id () ;

int kgdb_arch_handle_exception(int vector, int signo, int err_code,
          char *remcom_in_buffer, char *remcom_out_buffer,
          struct pt_regs *linux_regs)
{
 char *ptr = &remcom_in_buffer[1];
 unsigned long addr;

 switch (remcom_in_buffer[0]) {




 case 's':
 case 'c':

  if (kgdb_hex2long(&ptr, &addr))
   linux_regs->nip = addr;

  atomic_set(&kgdb_cpu_doing_single_step, -1);

  if (remcom_in_buffer[0] == 's') {





   linux_regs->msr |= MSR_SE;

   atomic_set(&kgdb_cpu_doing_single_step,
       raw_smp_processor_id());
  }
  return 0;
 }

 return -1;
}
