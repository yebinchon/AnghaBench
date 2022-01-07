
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_4__ {scalar_t__ hmi_p9_special_emu; } ;
struct TYPE_3__ {int (* handle_hmi_exception ) (struct pt_regs*) ;} ;


 int irq_enter () ;
 int irq_exit () ;
 TYPE_2__* local_paca ;
 int p9_hmi_special_emu (struct pt_regs*) ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 TYPE_1__ ppc_md ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;
 int stub1 (struct pt_regs*) ;

void handle_hmi_exception(struct pt_regs *regs)
{
 struct pt_regs *old_regs;

 old_regs = set_irq_regs(regs);
 irq_enter();
 if (ppc_md.handle_hmi_exception)
  ppc_md.handle_hmi_exception(regs);

 irq_exit();
 set_irq_regs(old_regs);
}
