
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stype; } ;
struct vio_rdx {TYPE_1__ tag; } ;
struct vio_driver_state {int hs_state; } ;


 int HS ;
 int VIO_HS_SENT_RDX_ACK ;
 int VIO_SUBTYPE_ACK ;
 int handshake_failure (struct vio_driver_state*) ;
 scalar_t__ send_ctrl (struct vio_driver_state*,TYPE_1__*,int) ;
 int viodbg (int ,char*) ;

__attribute__((used)) static int process_rdx_info(struct vio_driver_state *vio, struct vio_rdx *pkt)
{
 viodbg(HS, "GOT RDX INFO\n");

 pkt->tag.stype = VIO_SUBTYPE_ACK;
 viodbg(HS, "SEND RDX ACK\n");
 if (send_ctrl(vio, &pkt->tag, sizeof(*pkt)) < 0)
  return handshake_failure(vio);

 vio->hs_state |= VIO_HS_SENT_RDX_ACK;
 return 0;
}
