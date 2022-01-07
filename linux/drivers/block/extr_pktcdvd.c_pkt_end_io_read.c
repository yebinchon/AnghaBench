
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktcdvd_device {int wqueue; } ;
struct packet_data {int run_sm; int io_wait; int io_errors; scalar_t__ sector; struct pktcdvd_device* pd; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {int bi_status; TYPE_1__ bi_iter; struct packet_data* bi_private; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int pkt_bio_finished (struct pktcdvd_device*) ;
 int pkt_dbg (int,struct pktcdvd_device*,char*,struct bio*,unsigned long long,unsigned long long,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void pkt_end_io_read(struct bio *bio)
{
 struct packet_data *pkt = bio->bi_private;
 struct pktcdvd_device *pd = pkt->pd;
 BUG_ON(!pd);

 pkt_dbg(2, pd, "bio=%p sec0=%llx sec=%llx err=%d\n",
  bio, (unsigned long long)pkt->sector,
  (unsigned long long)bio->bi_iter.bi_sector, bio->bi_status);

 if (bio->bi_status)
  atomic_inc(&pkt->io_errors);
 if (atomic_dec_and_test(&pkt->io_wait)) {
  atomic_inc(&pkt->run_sm);
  wake_up(&pd->wqueue);
 }
 pkt_bio_finished(pd);
}
