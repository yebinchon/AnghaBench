
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_driver_state {int hs_state; } ;
struct TYPE_2__ {int stype; } ;
struct vio_dring_register {TYPE_1__ tag; } ;


 int VIO_HS_GOTVERS ;



 int handshake_failure (struct vio_driver_state*) ;
 int process_dreg_ack (struct vio_driver_state*,struct vio_dring_register*) ;
 int process_dreg_info (struct vio_driver_state*,struct vio_dring_register*) ;
 int process_dreg_nack (struct vio_driver_state*,struct vio_dring_register*) ;

__attribute__((used)) static int process_dreg(struct vio_driver_state *vio,
   struct vio_dring_register *pkt)
{
 if (!(vio->hs_state & VIO_HS_GOTVERS))
  return handshake_failure(vio);

 switch (pkt->tag.stype) {
 case 129:
  return process_dreg_info(vio, pkt);

 case 130:
  return process_dreg_ack(vio, pkt);

 case 128:
  return process_dreg_nack(vio, pkt);

 default:
  return handshake_failure(vio);
 }
}
