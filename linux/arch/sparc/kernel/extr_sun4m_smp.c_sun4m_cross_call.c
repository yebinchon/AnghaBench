
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int smpfunc_t ;
typedef int cpumask_t ;
struct TYPE_2__ {unsigned long arg1; unsigned long arg2; unsigned long arg3; unsigned long arg4; int* processors_in; int* processors_out; scalar_t__ arg5; int func; } ;


 int IRQ_CROSS_CALL ;
 int SUN4M_NCPUS ;
 int barrier () ;
 TYPE_1__ ccall_info ;
 int cpu_online_mask ;
 int cpumask_and (int *,int ,int *) ;
 int cpumask_clear_cpu (int ,int *) ;
 scalar_t__ cpumask_test_cpu (int,int *) ;
 int cross_call_lock ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sun4m_send_ipi (int,int ) ;

__attribute__((used)) static void sun4m_cross_call(smpfunc_t func, cpumask_t mask, unsigned long arg1,
        unsigned long arg2, unsigned long arg3,
        unsigned long arg4)
{
  register int ncpus = SUN4M_NCPUS;
  unsigned long flags;

  spin_lock_irqsave(&cross_call_lock, flags);


  ccall_info.func = func;
  ccall_info.arg1 = arg1;
  ccall_info.arg2 = arg2;
  ccall_info.arg3 = arg3;
  ccall_info.arg4 = arg4;
  ccall_info.arg5 = 0;


  {
   register int i;

   cpumask_clear_cpu(smp_processor_id(), &mask);
   cpumask_and(&mask, cpu_online_mask, &mask);
   for (i = 0; i < ncpus; i++) {
    if (cpumask_test_cpu(i, &mask)) {
     ccall_info.processors_in[i] = 0;
     ccall_info.processors_out[i] = 0;
     sun4m_send_ipi(i, IRQ_CROSS_CALL);
    } else {
     ccall_info.processors_in[i] = 1;
     ccall_info.processors_out[i] = 1;
    }
   }
  }

  {
   register int i;

   i = 0;
   do {
    if (!cpumask_test_cpu(i, &mask))
     continue;
    while (!ccall_info.processors_in[i])
     barrier();
   } while (++i < ncpus);

   i = 0;
   do {
    if (!cpumask_test_cpu(i, &mask))
     continue;
    while (!ccall_info.processors_out[i])
     barrier();
   } while (++i < ncpus);
  }
  spin_unlock_irqrestore(&cross_call_lock, flags);
}
