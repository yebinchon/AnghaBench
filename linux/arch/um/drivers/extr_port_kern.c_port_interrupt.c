
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_list {int has_connection; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int port_work ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t port_interrupt(int irq, void *data)
{
 struct port_list *port = data;

 port->has_connection = 1;
 schedule_work(&port_work);
 return IRQ_HANDLED;
}
