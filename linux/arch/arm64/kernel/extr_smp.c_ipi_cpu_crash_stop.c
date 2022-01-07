
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int (* cpu_die ) (unsigned int) ;} ;


 int atomic_dec (int *) ;
 TYPE_1__** cpu_ops ;
 int cpu_park_loop () ;
 int crash_save_cpu (struct pt_regs*,unsigned int) ;
 int local_irq_disable () ;
 int sdei_mask_local_cpu () ;
 int stub1 (unsigned int) ;
 int waiting_for_crash_ipi ;

__attribute__((used)) static void ipi_cpu_crash_stop(unsigned int cpu, struct pt_regs *regs)
{
}
