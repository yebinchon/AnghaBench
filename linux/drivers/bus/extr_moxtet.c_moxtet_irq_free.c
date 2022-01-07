
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exists; int domain; } ;
struct moxtet {TYPE_1__ irq; } ;


 int BIT (int) ;
 int MOXTET_NIRQS ;
 int irq_dispose_mapping (int) ;
 int irq_domain_remove (int ) ;
 int irq_find_mapping (int ,int) ;

__attribute__((used)) static void moxtet_irq_free(struct moxtet *moxtet)
{
 int i, irq;

 for (i = 0; i < MOXTET_NIRQS; ++i) {
  if (moxtet->irq.exists & BIT(i)) {
   irq = irq_find_mapping(moxtet->irq.domain, i);
   irq_dispose_mapping(irq);
  }
 }

 irq_domain_remove(moxtet->irq.domain);
}
