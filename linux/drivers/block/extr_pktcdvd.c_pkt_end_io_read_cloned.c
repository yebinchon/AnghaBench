
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktcdvd_device {int dummy; } ;
struct packet_stacked_data {TYPE_1__* bio; struct pktcdvd_device* pd; } ;
struct bio {int bi_status; struct packet_stacked_data* bi_private; } ;
struct TYPE_2__ {int bi_status; } ;


 int bio_endio (TYPE_1__*) ;
 int bio_put (struct bio*) ;
 int mempool_free (struct packet_stacked_data*,int *) ;
 int pkt_bio_finished (struct pktcdvd_device*) ;
 int psd_pool ;

__attribute__((used)) static void pkt_end_io_read_cloned(struct bio *bio)
{
 struct packet_stacked_data *psd = bio->bi_private;
 struct pktcdvd_device *pd = psd->pd;

 psd->bio->bi_status = bio->bi_status;
 bio_put(bio);
 bio_endio(psd->bio);
 mempool_free(psd, &psd_pool);
 pkt_bio_finished(pd);
}
