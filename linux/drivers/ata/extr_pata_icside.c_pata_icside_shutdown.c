
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pata_icside_state {scalar_t__ ioc_base; } ;
struct expansion_card {int irq; TYPE_1__* ops; } ;
struct ata_host {struct pata_icside_state* private_data; } ;
struct TYPE_2__ {int (* irqdisable ) (struct expansion_card*,int ) ;} ;


 struct ata_host* ecard_get_drvdata (struct expansion_card*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int stub1 (struct expansion_card*,int ) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void pata_icside_shutdown(struct expansion_card *ec)
{
 struct ata_host *host = ecard_get_drvdata(ec);
 unsigned long flags;






 local_irq_save(flags);
 ec->ops->irqdisable(ec, ec->irq);
 local_irq_restore(flags);






 if (host) {
  struct pata_icside_state *state = host->private_data;
  if (state->ioc_base)
   writeb(0, state->ioc_base);
 }
}
