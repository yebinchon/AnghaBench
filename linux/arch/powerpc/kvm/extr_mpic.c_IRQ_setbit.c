
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_queue {int queue; } ;


 int set_bit (int,int ) ;

__attribute__((used)) static inline void IRQ_setbit(struct irq_queue *q, int n_IRQ)
{
 set_bit(n_IRQ, q->queue);
}
