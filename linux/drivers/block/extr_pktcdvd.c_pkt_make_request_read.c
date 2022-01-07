
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int secs_r; } ;
struct pktcdvd_device {TYPE_1__ stats; int bdev; } ;
struct packet_stacked_data {struct bio* bio; struct pktcdvd_device* pd; } ;
struct bio {int bi_end_io; struct packet_stacked_data* bi_private; } ;


 int GFP_NOIO ;
 struct bio* bio_clone_fast (struct bio*,int ,int *) ;
 scalar_t__ bio_sectors (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 struct packet_stacked_data* mempool_alloc (int *,int ) ;
 int pkt_bio_set ;
 int pkt_end_io_read_cloned ;
 int pkt_queue_bio (struct pktcdvd_device*,struct bio*) ;
 int psd_pool ;

__attribute__((used)) static void pkt_make_request_read(struct pktcdvd_device *pd, struct bio *bio)
{
 struct bio *cloned_bio = bio_clone_fast(bio, GFP_NOIO, &pkt_bio_set);
 struct packet_stacked_data *psd = mempool_alloc(&psd_pool, GFP_NOIO);

 psd->pd = pd;
 psd->bio = bio;
 bio_set_dev(cloned_bio, pd->bdev);
 cloned_bio->bi_private = psd;
 cloned_bio->bi_end_io = pkt_end_io_read_cloned;
 pd->stats.secs_r += bio_sectors(bio);
 pkt_queue_bio(pd, cloned_bio);
}
