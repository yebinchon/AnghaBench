
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct host_txq_entry {int* status; scalar_t__ incarn; int skb; struct fore200e_vc_map* vc_map; TYPE_2__* tpd; int data; } ;
struct host_txq {scalar_t__ txing; size_t tail; struct host_txq_entry* host_entry; } ;
struct fore200e_vc_map {scalar_t__ incarn; struct atm_vcc* vcc; } ;
struct fore200e {struct host_txq host_txq; TYPE_3__* atm_dev; int dev; } ;
struct atm_vcc {TYPE_4__* stats; int (* pop ) (struct atm_vcc*,int ) ;int flags; } ;
struct TYPE_8__ {int tx; int tx_err; } ;
struct TYPE_7__ {int number; } ;
struct TYPE_6__ {TYPE_1__* tsd; } ;
struct TYPE_5__ {int length; int buffer; } ;


 int ASSERT (struct atm_vcc*) ;
 int ATM_VF_READY ;
 int DMA_TO_DEVICE ;
 int DPRINTK (int,char*,struct host_txq_entry*,...) ;
 int FORE200E_NEXT_ENTRY (size_t,int ) ;
 int QUEUE_SIZE_TX ;
 int STATUS_COMPLETE ;
 int STATUS_ERROR ;
 int STATUS_FREE ;
 int atomic_inc (int *) ;
 int dev_kfree_skb_any (int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (int ) ;
 int stub1 (struct atm_vcc*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
fore200e_tx_irq(struct fore200e* fore200e)
{
    struct host_txq* txq = &fore200e->host_txq;
    struct host_txq_entry* entry;
    struct atm_vcc* vcc;
    struct fore200e_vc_map* vc_map;

    if (fore200e->host_txq.txing == 0)
 return;

    for (;;) {

 entry = &txq->host_entry[ txq->tail ];

        if ((*entry->status & STATUS_COMPLETE) == 0) {
     break;
 }

 DPRINTK(3, "TX COMPLETED: entry = %p [tail = %d], vc_map = %p, skb = %p\n",
  entry, txq->tail, entry->vc_map, entry->skb);


 kfree(entry->data);


 dma_unmap_single(fore200e->dev, entry->tpd->tsd[ 0 ].buffer, entry->tpd->tsd[ 0 ].length,
     DMA_TO_DEVICE);

 vc_map = entry->vc_map;


 if ((vc_map->vcc == ((void*)0)) ||
     (test_bit(ATM_VF_READY, &vc_map->vcc->flags) == 0)) {

     DPRINTK(1, "no ready vcc found for PDU sent on device %d\n",
      fore200e->atm_dev->number);

     dev_kfree_skb_any(entry->skb);
 }
 else {
     ASSERT(vc_map->vcc);


     if (vc_map->incarn != entry->incarn) {
  DPRINTK(1, "vcc closed-then-re-opened; dropping PDU sent on device %d\n",
   fore200e->atm_dev->number);

  dev_kfree_skb_any(entry->skb);
     }
     else {
  vcc = vc_map->vcc;
  ASSERT(vcc);


  if (vcc->pop) {
      vcc->pop(vcc, entry->skb);
  }
  else {
      dev_kfree_skb_any(entry->skb);
  }


  if (*entry->status & STATUS_ERROR)
      atomic_inc(&vcc->stats->tx_err);
  else
      atomic_inc(&vcc->stats->tx);
     }
 }

 *entry->status = STATUS_FREE;

 fore200e->host_txq.txing--;

 FORE200E_NEXT_ENTRY(txq->tail, QUEUE_SIZE_TX);
    }
}
