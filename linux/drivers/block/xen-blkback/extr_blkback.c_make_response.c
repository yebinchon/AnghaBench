
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int rsp_prod_pvt; } ;
struct TYPE_6__ {int rsp_prod_pvt; } ;
union blkif_back_rings {TYPE_2__ common; TYPE_3__ x86_64; TYPE_3__ x86_32; TYPE_3__ native; } ;
typedef int u64 ;
struct xen_blkif_ring {int irq; int blk_ring_lock; TYPE_1__* blkif; union blkif_back_rings blk_rings; } ;
struct blkif_response {unsigned short operation; int status; int id; } ;
struct TYPE_4__ {int blk_protocol; } ;





 int BUG () ;
 struct blkif_response* RING_GET_RESPONSE (TYPE_3__*,int ) ;
 int RING_PUSH_RESPONSES_AND_CHECK_NOTIFY (TYPE_2__*,int) ;
 int notify_remote_via_irq (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void make_response(struct xen_blkif_ring *ring, u64 id,
     unsigned short op, int st)
{
 struct blkif_response *resp;
 unsigned long flags;
 union blkif_back_rings *blk_rings;
 int notify;

 spin_lock_irqsave(&ring->blk_ring_lock, flags);
 blk_rings = &ring->blk_rings;

 switch (ring->blkif->blk_protocol) {
 case 130:
  resp = RING_GET_RESPONSE(&blk_rings->native,
      blk_rings->native.rsp_prod_pvt);
  break;
 case 129:
  resp = RING_GET_RESPONSE(&blk_rings->x86_32,
      blk_rings->x86_32.rsp_prod_pvt);
  break;
 case 128:
  resp = RING_GET_RESPONSE(&blk_rings->x86_64,
      blk_rings->x86_64.rsp_prod_pvt);
  break;
 default:
  BUG();
 }

 resp->id = id;
 resp->operation = op;
 resp->status = st;

 blk_rings->common.rsp_prod_pvt++;
 RING_PUSH_RESPONSES_AND_CHECK_NOTIFY(&blk_rings->common, notify);
 spin_unlock_irqrestore(&ring->blk_ring_lock, flags);
 if (notify)
  notify_remote_via_irq(ring->irq);
}
