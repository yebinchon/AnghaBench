
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pktcdvd_device {int flags; int bdev; } ;
struct page {int dummy; } ;
struct TYPE_10__ {int head; } ;
struct packet_data {int frames; int write_size; int cache_valid; TYPE_3__* w_bio; int io_wait; scalar_t__ sector; int lock; TYPE_2__ orig_bios; struct page** pages; } ;
struct TYPE_9__ {scalar_t__ bi_sector; } ;
struct TYPE_11__ {int bi_vcnt; struct packet_data* bi_private; int bi_end_io; TYPE_1__ bi_iter; } ;


 int BUG () ;
 int CD_FRAMESIZE ;
 int PACKET_MERGE_SEGS ;
 int PACKET_WRITE_WAIT_STATE ;
 int PAGE_SIZE ;
 int REQ_OP_WRITE ;
 int atomic_set (int *,int) ;
 int bio_add_page (TYPE_3__*,struct page*,int,unsigned int) ;
 int bio_list_copy_data (TYPE_3__*,int ) ;
 int bio_reset (TYPE_3__*) ;
 int bio_set_dev (TYPE_3__*,int ) ;
 int bio_set_op_attrs (TYPE_3__*,int ,int ) ;
 int pkt_dbg (int,struct pktcdvd_device*,char*,int,...) ;
 int pkt_end_io_packet_write ;
 int pkt_queue_bio (struct pktcdvd_device*,TYPE_3__*) ;
 int pkt_set_state (struct packet_data*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void pkt_start_write(struct pktcdvd_device *pd, struct packet_data *pkt)
{
 int f;

 bio_reset(pkt->w_bio);
 pkt->w_bio->bi_iter.bi_sector = pkt->sector;
 bio_set_dev(pkt->w_bio, pd->bdev);
 pkt->w_bio->bi_end_io = pkt_end_io_packet_write;
 pkt->w_bio->bi_private = pkt;


 for (f = 0; f < pkt->frames; f++) {
  struct page *page = pkt->pages[(f * CD_FRAMESIZE) / PAGE_SIZE];
  unsigned offset = (f * CD_FRAMESIZE) % PAGE_SIZE;

  if (!bio_add_page(pkt->w_bio, page, CD_FRAMESIZE, offset))
   BUG();
 }
 pkt_dbg(2, pd, "vcnt=%d\n", pkt->w_bio->bi_vcnt);




 spin_lock(&pkt->lock);
 bio_list_copy_data(pkt->w_bio, pkt->orig_bios.head);

 pkt_set_state(pkt, PACKET_WRITE_WAIT_STATE);
 spin_unlock(&pkt->lock);

 pkt_dbg(2, pd, "Writing %d frames for zone %llx\n",
  pkt->write_size, (unsigned long long)pkt->sector);

 if (test_bit(PACKET_MERGE_SEGS, &pd->flags) || (pkt->write_size < pkt->frames))
  pkt->cache_valid = 1;
 else
  pkt->cache_valid = 0;


 atomic_set(&pkt->io_wait, 1);
 bio_set_op_attrs(pkt->w_bio, REQ_OP_WRITE, 0);
 pkt_queue_bio(pd, pkt->w_bio);
}
