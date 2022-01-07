
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vio_driver_state {int dr_state; int * desc_buf; struct vio_dring_state* drings; } ;
struct vio_dring_state {int ident; } ;


 int BUG_ON (int) ;
 size_t VIO_DRIVER_RX_RING ;
 int VIO_DR_STATE_RXREG ;
 int kfree (int *) ;
 int memset (struct vio_dring_state*,int ,int) ;

__attribute__((used)) static void flush_rx_dring(struct vio_driver_state *vio)
{
 struct vio_dring_state *dr;
 u64 ident;

 BUG_ON(!(vio->dr_state & VIO_DR_STATE_RXREG));

 dr = &vio->drings[VIO_DRIVER_RX_RING];
 ident = dr->ident;

 BUG_ON(!vio->desc_buf);
 kfree(vio->desc_buf);
 vio->desc_buf = ((void*)0);

 memset(dr, 0, sizeof(*dr));
 dr->ident = ident;
}
