
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int outvq_lock; int inbuf_lock; } ;


 int discard_port_data (struct port*) ;
 int reclaim_consumed_buffers (struct port*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void remove_port_data(struct port *port)
{
 spin_lock_irq(&port->inbuf_lock);

 discard_port_data(port);
 spin_unlock_irq(&port->inbuf_lock);

 spin_lock_irq(&port->outvq_lock);
 reclaim_consumed_buffers(port);
 spin_unlock_irq(&port->outvq_lock);
}
