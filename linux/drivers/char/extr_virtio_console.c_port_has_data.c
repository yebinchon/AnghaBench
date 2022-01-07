
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int inbuf_lock; scalar_t__ inbuf; } ;


 scalar_t__ get_inbuf (struct port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool port_has_data(struct port *port)
{
 unsigned long flags;
 bool ret;

 ret = 0;
 spin_lock_irqsave(&port->inbuf_lock, flags);
 port->inbuf = get_inbuf(port);
 if (port->inbuf)
  ret = 1;

 spin_unlock_irqrestore(&port->inbuf_lock, flags);
 return ret;
}
