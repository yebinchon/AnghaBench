
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_dring_state {int entry_size; int num_entries; scalar_t__ ncookies; scalar_t__ pending; int * base; int cookies; } ;
struct TYPE_2__ {int lp; struct vio_dring_state* drings; } ;
struct vdc_port {TYPE_1__ vio; } ;


 size_t VIO_DRIVER_TX_RING ;
 int ldc_free_exp_dring (int ,int *,int,int ,scalar_t__) ;

__attribute__((used)) static void vdc_free_tx_ring(struct vdc_port *port)
{
 struct vio_dring_state *dr = &port->vio.drings[VIO_DRIVER_TX_RING];

 if (dr->base) {
  ldc_free_exp_dring(port->vio.lp, dr->base,
       (dr->entry_size * dr->num_entries),
       dr->cookies, dr->ncookies);
  dr->base = ((void*)0);
  dr->entry_size = 0;
  dr->num_entries = 0;
  dr->pending = 0;
  dr->ncookies = 0;
 }
}
