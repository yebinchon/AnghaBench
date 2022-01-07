
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct openpic {int max_irq; TYPE_1__* src; } ;
struct irq_queue {int next; int priority; int queue; } ;
struct TYPE_2__ {int ivpr; } ;


 int IVPR_PRIORITY (int ) ;
 int find_next_bit (int ,int,int) ;
 int pr_debug (char*,int,int,int) ;

__attribute__((used)) static void IRQ_check(struct openpic *opp, struct irq_queue *q)
{
 int irq = -1;
 int next = -1;
 int priority = -1;

 for (;;) {
  irq = find_next_bit(q->queue, opp->max_irq, irq + 1);
  if (irq == opp->max_irq)
   break;

  pr_debug("IRQ_check: irq %d set ivpr_pr=%d pr=%d\n",
   irq, IVPR_PRIORITY(opp->src[irq].ivpr), priority);

  if (IVPR_PRIORITY(opp->src[irq].ivpr) > priority) {
   next = irq;
   priority = IVPR_PRIORITY(opp->src[irq].ivpr);
  }
 }

 q->next = next;
 q->priority = priority;
}
