
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_completion {int err; int com; int waiting_for; } ;
struct TYPE_2__ {struct vio_completion* cmp; } ;
struct vdc_port {TYPE_1__ vio; } ;


 int WAITING_FOR_LINK_UP ;
 int init_completion (int *) ;
 int vio_port_up (TYPE_1__*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int vdc_port_up(struct vdc_port *port)
{
 struct vio_completion comp;

 init_completion(&comp.com);
 comp.err = 0;
 comp.waiting_for = WAITING_FOR_LINK_UP;
 port->vio.cmp = &comp;

 vio_port_up(&port->vio);
 wait_for_completion(&comp.com);
 return comp.err;
}
