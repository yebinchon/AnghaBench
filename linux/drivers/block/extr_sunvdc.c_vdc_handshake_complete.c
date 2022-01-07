
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver_state {int dummy; } ;
struct vdc_port {int ldc_reset_timer_work; } ;


 int WAITING_FOR_LINK_UP ;
 int cancel_delayed_work (int *) ;
 struct vdc_port* to_vdc_port (struct vio_driver_state*) ;
 int vdc_blk_queue_start (struct vdc_port*) ;
 int vdc_finish (struct vio_driver_state*,int ,int ) ;

__attribute__((used)) static void vdc_handshake_complete(struct vio_driver_state *vio)
{
 struct vdc_port *port = to_vdc_port(vio);

 cancel_delayed_work(&port->ldc_reset_timer_work);
 vdc_finish(vio, 0, WAITING_FOR_LINK_UP);
 vdc_blk_queue_start(port);
}
