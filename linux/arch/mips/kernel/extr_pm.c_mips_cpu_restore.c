
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tp_value; } ;
struct TYPE_5__ {scalar_t__ mm; } ;


 int __restore_watch (TYPE_1__*) ;
 int cpu_asid (unsigned int,scalar_t__) ;
 scalar_t__ cpu_has_userlocal ;
 TYPE_1__* current ;
 TYPE_2__* current_thread_info () ;
 int restore_dsp (TYPE_1__*) ;
 unsigned int smp_processor_id () ;
 int write_c0_entryhi (int ) ;
 int write_c0_userlocal (int ) ;

__attribute__((used)) static void mips_cpu_restore(void)
{
 unsigned int cpu = smp_processor_id();


 if (current->mm)
  write_c0_entryhi(cpu_asid(cpu, current->mm));


 restore_dsp(current);


 if (cpu_has_userlocal)
  write_c0_userlocal(current_thread_info()->tp_value);


 __restore_watch(current);
}
