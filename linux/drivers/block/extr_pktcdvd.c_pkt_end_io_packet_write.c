
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkt_ended; } ;
struct pktcdvd_device {int wqueue; TYPE_1__ stats; } ;
struct packet_data {int run_sm; int io_wait; int id; struct pktcdvd_device* pd; } ;
struct bio {int bi_status; struct packet_data* bi_private; } ;


 int BUG_ON (int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int pkt_bio_finished (struct pktcdvd_device*) ;
 int pkt_dbg (int,struct pktcdvd_device*,char*,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void pkt_end_io_packet_write(struct bio *bio)
{
 struct packet_data *pkt = bio->bi_private;
 struct pktcdvd_device *pd = pkt->pd;
 BUG_ON(!pd);

 pkt_dbg(2, pd, "id=%d, err=%d\n", pkt->id, bio->bi_status);

 pd->stats.pkt_ended++;

 pkt_bio_finished(pd);
 atomic_dec(&pkt->io_wait);
 atomic_inc(&pkt->run_sm);
 wake_up(&pd->wqueue);
}
