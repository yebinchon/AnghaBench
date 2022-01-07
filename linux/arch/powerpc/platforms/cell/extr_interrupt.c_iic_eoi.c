
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct iic {size_t eoi_ptr; int * eoi_stack; TYPE_1__* regs; } ;
struct TYPE_2__ {int prio; } ;


 int BUG_ON (int) ;
 int cpu_iic ;
 int out_be64 (int *,int ) ;
 struct iic* this_cpu_ptr (int *) ;

__attribute__((used)) static void iic_eoi(struct irq_data *d)
{
 struct iic *iic = this_cpu_ptr(&cpu_iic);
 out_be64(&iic->regs->prio, iic->eoi_stack[--iic->eoi_ptr]);
 BUG_ON(iic->eoi_ptr < 0);
}
