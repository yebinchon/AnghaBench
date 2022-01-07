
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stype; } ;
struct vio_rdx {TYPE_1__ tag; } ;
struct vio_driver_state {int dummy; } ;





 int all_drings_registered (struct vio_driver_state*) ;
 int handshake_failure (struct vio_driver_state*) ;
 int process_rdx_ack (struct vio_driver_state*,struct vio_rdx*) ;
 int process_rdx_info (struct vio_driver_state*,struct vio_rdx*) ;
 int process_rdx_nack (struct vio_driver_state*,struct vio_rdx*) ;

__attribute__((used)) static int process_rdx(struct vio_driver_state *vio, struct vio_rdx *pkt)
{
 if (!all_drings_registered(vio))
  handshake_failure(vio);

 switch (pkt->tag.stype) {
 case 129:
  return process_rdx_info(vio, pkt);

 case 130:
  return process_rdx_ack(vio, pkt);

 case 128:
  return process_rdx_nack(vio, pkt);

 default:
  return handshake_failure(vio);
 }
}
