
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver_state {int dr_state; int hs_state; scalar_t__ desc_buf_len; int * desc_buf; struct vio_dring_state* drings; } ;
struct vio_dring_state {int dummy; } ;


 int ECONNRESET ;
 int HS ;
 size_t VIO_DRIVER_RX_RING ;
 int VIO_DR_STATE_RXREG ;
 int VIO_DR_STATE_TXREG ;
 int VIO_HS_INVALID ;
 int kfree (int *) ;
 int memset (struct vio_dring_state*,int ,int) ;
 int viodbg (int ,char*) ;

__attribute__((used)) static int handshake_failure(struct vio_driver_state *vio)
{
 struct vio_dring_state *dr;






 viodbg(HS, "HANDSHAKE FAILURE\n");

 vio->dr_state &= ~(VIO_DR_STATE_TXREG |
      VIO_DR_STATE_RXREG);

 dr = &vio->drings[VIO_DRIVER_RX_RING];
 memset(dr, 0, sizeof(*dr));

 kfree(vio->desc_buf);
 vio->desc_buf = ((void*)0);
 vio->desc_buf_len = 0;

 vio->hs_state = VIO_HS_INVALID;

 return -ECONNRESET;
}
