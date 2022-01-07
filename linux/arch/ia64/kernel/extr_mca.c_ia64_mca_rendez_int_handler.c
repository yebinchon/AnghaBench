
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ia64_mca_notify_die {int* monarch_cpu; int * sos; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int * imi_rendez_checkin; } ;


 int DIE_MCA_RENDZVOUS_ENTER ;
 int DIE_MCA_RENDZVOUS_LEAVE ;
 int DIE_MCA_RENDZVOUS_PROCESS ;
 int IA64_MCA_RENDEZ_CHECKIN_DONE ;
 int IA64_MCA_RENDEZ_CHECKIN_NOTDONE ;
 int IRQ_HANDLED ;
 int NOTIFY_MCA (int ,int ,long,int) ;
 int cpu_relax () ;
 int get_irq_regs () ;
 TYPE_1__ ia64_mc_info ;
 int ia64_sal_mc_rendez () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int monarch_cpu ;
 int smp_processor_id () ;

__attribute__((used)) static irqreturn_t
ia64_mca_rendez_int_handler(int rendez_irq, void *arg)
{
 unsigned long flags;
 int cpu = smp_processor_id();
 struct ia64_mca_notify_die nd =
  { .sos = ((void*)0), .monarch_cpu = &monarch_cpu };


 local_irq_save(flags);

 NOTIFY_MCA(DIE_MCA_RENDZVOUS_ENTER, get_irq_regs(), (long)&nd, 1);

 ia64_mc_info.imi_rendez_checkin[cpu] = IA64_MCA_RENDEZ_CHECKIN_DONE;



 ia64_sal_mc_rendez();

 NOTIFY_MCA(DIE_MCA_RENDZVOUS_PROCESS, get_irq_regs(), (long)&nd, 1);


 while (monarch_cpu != -1)
        cpu_relax();

 NOTIFY_MCA(DIE_MCA_RENDZVOUS_LEAVE, get_irq_regs(), (long)&nd, 1);

 ia64_mc_info.imi_rendez_checkin[cpu] = IA64_MCA_RENDEZ_CHECKIN_NOTDONE;

 local_irq_restore(flags);
 return IRQ_HANDLED;
}
