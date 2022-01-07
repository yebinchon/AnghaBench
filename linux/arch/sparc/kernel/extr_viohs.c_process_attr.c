
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_driver_state {int hs_state; int dr_state; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* handle_attr ) (struct vio_driver_state*,void*) ;} ;


 int VIO_DR_STATE_TXREQ ;
 int VIO_HS_GOTVERS ;
 int VIO_HS_GOT_ATTR ;
 int VIO_HS_SENT_DREG ;
 int handshake_failure (struct vio_driver_state*) ;
 scalar_t__ send_dreg (struct vio_driver_state*) ;
 int stub1 (struct vio_driver_state*,void*) ;

__attribute__((used)) static int process_attr(struct vio_driver_state *vio, void *pkt)
{
 int err;

 if (!(vio->hs_state & VIO_HS_GOTVERS))
  return handshake_failure(vio);

 if (!vio->ops)
  return 0;

 err = vio->ops->handle_attr(vio, pkt);
 if (err < 0) {
  return handshake_failure(vio);
 } else {
  vio->hs_state |= VIO_HS_GOT_ATTR;

  if ((vio->dr_state & VIO_DR_STATE_TXREQ) &&
      !(vio->hs_state & VIO_HS_SENT_DREG)) {
   if (send_dreg(vio) < 0)
    return handshake_failure(vio);

   vio->hs_state |= VIO_HS_SENT_DREG;
  }
 }

 return 0;
}
