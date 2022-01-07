
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int irq_complete_move (int ) ;
 int irq_move_irq (struct irq_data*) ;

__attribute__((used)) static void
iosapic_ack_edge_irq (struct irq_data *data)
{
 irq_complete_move(data->irq);
 irq_move_irq(data);
}
