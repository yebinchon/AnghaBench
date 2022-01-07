
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_queue {int queue; } ;


 int clear_bit (int,int ) ;

__attribute__((used)) static inline void IRQ_resetbit(struct irq_queue *q, int n_IRQ)
{
 clear_bit(n_IRQ, q->queue);
}
