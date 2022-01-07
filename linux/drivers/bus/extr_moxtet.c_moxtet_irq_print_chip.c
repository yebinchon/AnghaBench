
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct moxtet_irqpos {size_t idx; int bit; } ;
struct TYPE_2__ {struct moxtet_irqpos* position; } ;
struct moxtet {int* modules; TYPE_1__ irq; } ;
struct irq_data {size_t hwirq; } ;


 struct moxtet* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mox_module_name (int) ;
 int seq_printf (struct seq_file*,char*,int ,size_t,int ) ;

__attribute__((used)) static void moxtet_irq_print_chip(struct irq_data *d, struct seq_file *p)
{
 struct moxtet *moxtet = irq_data_get_irq_chip_data(d);
 struct moxtet_irqpos *pos = &moxtet->irq.position[d->hwirq];
 int id;

 id = moxtet->modules[pos->idx];

 seq_printf(p, " moxtet-%s.%i#%i", mox_module_name(id), pos->idx,
     pos->bit);
}
