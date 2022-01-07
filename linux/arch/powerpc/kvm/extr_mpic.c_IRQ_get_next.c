
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openpic {int dummy; } ;
struct irq_queue {int next; } ;


 int IRQ_check (struct openpic*,struct irq_queue*) ;

__attribute__((used)) static int IRQ_get_next(struct openpic *opp, struct irq_queue *q)
{

 IRQ_check(opp, q);

 return q->next;
}
