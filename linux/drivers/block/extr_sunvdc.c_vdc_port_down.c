
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lp; } ;
struct vdc_port {TYPE_1__ vio; } ;


 int ldc_disconnect (int ) ;
 int ldc_unbind (int ) ;
 int vdc_free_tx_ring (struct vdc_port*) ;
 int vio_ldc_free (TYPE_1__*) ;

__attribute__((used)) static void vdc_port_down(struct vdc_port *port)
{
 ldc_disconnect(port->vio.lp);
 ldc_unbind(port->vio.lp);
 vdc_free_tx_ring(port);
 vio_ldc_free(&port->vio);
}
