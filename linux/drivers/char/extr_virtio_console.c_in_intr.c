
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtqueue {TYPE_3__* vdev; } ;
struct TYPE_5__ {int hvc; } ;
struct port {TYPE_2__ cons; int waitqueue; int inbuf_lock; TYPE_1__* portdev; int guest_connected; int inbuf; } ;
struct TYPE_6__ {int priv; } ;
struct TYPE_4__ {int vdev; } ;


 int discard_port_data (struct port*) ;
 struct port* find_port_by_vq (int ,struct virtqueue*) ;
 int flush_bufs (struct virtqueue*,int) ;
 int get_inbuf (struct port*) ;
 int hvc_kick () ;
 scalar_t__ hvc_poll (int ) ;
 scalar_t__ is_console_port (struct port*) ;
 int is_rproc_serial (int ) ;
 int send_sigio_to_port (struct port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void in_intr(struct virtqueue *vq)
{
 struct port *port;
 unsigned long flags;

 port = find_port_by_vq(vq->vdev->priv, vq);
 if (!port) {
  flush_bufs(vq, 0);
  return;
 }

 spin_lock_irqsave(&port->inbuf_lock, flags);
 port->inbuf = get_inbuf(port);
 if (!port->guest_connected && !is_rproc_serial(port->portdev->vdev))
  discard_port_data(port);


 send_sigio_to_port(port);

 spin_unlock_irqrestore(&port->inbuf_lock, flags);

 wake_up_interruptible(&port->waitqueue);

 if (is_console_port(port) && hvc_poll(port->cons.hvc))
  hvc_kick();
}
