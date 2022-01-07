
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {struct pktcdvd_device* queuedata; } ;
struct TYPE_3__ {scalar_t__ size; } ;
struct pktcdvd_device {TYPE_1__ settings; int flags; } ;
struct TYPE_4__ {scalar_t__ bi_sector; int bi_size; } ;
struct bio {TYPE_2__ bi_iter; } ;
typedef scalar_t__ sector_t ;
typedef int blk_qc_t ;


 int BDEVNAME_SIZE ;
 int BLK_QC_T_NONE ;
 int BUG_ON (int) ;
 int CD_FRAMESIZE ;
 int GFP_NOIO ;
 int PACKET_WRITABLE ;
 scalar_t__ READ ;
 int bio_chain (struct bio*,struct bio*) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_devname (struct bio*,char*) ;
 scalar_t__ bio_end_sector (struct bio*) ;
 int bio_io_error (struct bio*) ;
 struct bio* bio_split (struct bio*,scalar_t__,int ,int *) ;
 int blk_queue_split (struct request_queue*,struct bio**) ;
 scalar_t__ get_zone (scalar_t__,struct pktcdvd_device*) ;
 int pkt_bio_set ;
 int pkt_dbg (int,struct pktcdvd_device*,char*,unsigned long long,unsigned long long) ;
 int pkt_err (struct pktcdvd_device*,char*) ;
 int pkt_make_request_read (struct pktcdvd_device*,struct bio*) ;
 int pkt_make_request_write (struct request_queue*,struct bio*) ;
 int pkt_notice (struct pktcdvd_device*,char*,unsigned long long) ;
 int pr_err (char*,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static blk_qc_t pkt_make_request(struct request_queue *q, struct bio *bio)
{
 struct pktcdvd_device *pd;
 char b[BDEVNAME_SIZE];
 struct bio *split;

 blk_queue_split(q, &bio);

 pd = q->queuedata;
 if (!pd) {
  pr_err("%s incorrect request queue\n", bio_devname(bio, b));
  goto end_io;
 }

 pkt_dbg(2, pd, "start = %6llx stop = %6llx\n",
  (unsigned long long)bio->bi_iter.bi_sector,
  (unsigned long long)bio_end_sector(bio));




 if (bio_data_dir(bio) == READ) {
  pkt_make_request_read(pd, bio);
  return BLK_QC_T_NONE;
 }

 if (!test_bit(PACKET_WRITABLE, &pd->flags)) {
  pkt_notice(pd, "WRITE for ro device (%llu)\n",
      (unsigned long long)bio->bi_iter.bi_sector);
  goto end_io;
 }

 if (!bio->bi_iter.bi_size || (bio->bi_iter.bi_size % CD_FRAMESIZE)) {
  pkt_err(pd, "wrong bio size\n");
  goto end_io;
 }

 do {
  sector_t zone = get_zone(bio->bi_iter.bi_sector, pd);
  sector_t last_zone = get_zone(bio_end_sector(bio) - 1, pd);

  if (last_zone != zone) {
   BUG_ON(last_zone != zone + pd->settings.size);

   split = bio_split(bio, last_zone -
       bio->bi_iter.bi_sector,
       GFP_NOIO, &pkt_bio_set);
   bio_chain(split, bio);
  } else {
   split = bio;
  }

  pkt_make_request_write(q, split);
 } while (split != bio);

 return BLK_QC_T_NONE;
end_io:
 bio_io_error(bio);
 return BLK_QC_T_NONE;
}
