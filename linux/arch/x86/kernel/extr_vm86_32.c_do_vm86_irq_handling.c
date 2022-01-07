
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sig; int tsk; } ;


 int ALLOWED_SIGS ;
 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;



 int VM86_IRQNAME ;

 int capable (int ) ;
 int current ;
 int free_vm86_irq (int) ;
 int get_and_reset_irq (int) ;
 int invalid_vm86_irq (int) ;
 int irq_handler ;
 int irqbits ;
 int request_irq (int,int *,int ,int ,int *) ;
 TYPE_1__* vm86_irqs ;

__attribute__((used)) static int do_vm86_irq_handling(int subfunction, int irqnumber)
{
 int ret;
 switch (subfunction) {
  case 130: {
   return get_and_reset_irq(irqnumber);
  }
  case 129: {
   return irqbits;
  }
  case 128: {
   int sig = irqnumber >> 8;
   int irq = irqnumber & 255;
   if (!capable(CAP_SYS_ADMIN)) return -EPERM;
   if (!((1 << sig) & ALLOWED_SIGS)) return -EPERM;
   if (invalid_vm86_irq(irq)) return -EPERM;
   if (vm86_irqs[irq].tsk) return -EPERM;
   ret = request_irq(irq, &irq_handler, 0, VM86_IRQNAME, ((void*)0));
   if (ret) return ret;
   vm86_irqs[irq].sig = sig;
   vm86_irqs[irq].tsk = current;
   return irq;
  }
  case 131: {
   if (invalid_vm86_irq(irqnumber)) return -EPERM;
   if (!vm86_irqs[irqnumber].tsk) return 0;
   if (vm86_irqs[irqnumber].tsk != current) return -EPERM;
   free_vm86_irq(irqnumber);
   return 0;
  }
 }
 return -EINVAL;
}
