
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rsxx_cardinfo {int halt; int dma_fault; int gendisk; } ;
struct rsxx_bio_meta {int pending_dmas; int start_time; int error; struct bio* bio; } ;
struct request_queue {struct rsxx_cardinfo* queuedata; } ;
struct TYPE_2__ {scalar_t__ bi_size; scalar_t__ bi_sector; } ;
struct bio {scalar_t__ bi_status; TYPE_1__ bi_iter; } ;
typedef scalar_t__ blk_status_t ;
typedef int blk_qc_t ;


 int BLK_QC_T_NONE ;
 scalar_t__ BLK_STS_IOERR ;
 scalar_t__ BLK_STS_RESOURCE ;
 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_dma_done_cb ;
 scalar_t__ bio_end_sector (struct bio*) ;
 int bio_endio (struct bio*) ;
 int bio_meta_pool ;
 int blk_queue_split (struct request_queue*,struct bio**) ;
 int dev_dbg (int ,char*,char,struct rsxx_bio_meta*,int,scalar_t__) ;
 int dev_err (int ,char*) ;
 int disk_stats_start (struct rsxx_cardinfo*,struct bio*) ;
 scalar_t__ get_capacity (int ) ;
 int jiffies ;
 struct rsxx_bio_meta* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct rsxx_bio_meta*) ;
 int might_sleep () ;
 scalar_t__ rsxx_dma_queue_bio (struct rsxx_cardinfo*,struct bio*,int *,int ,struct rsxx_bio_meta*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static blk_qc_t rsxx_make_request(struct request_queue *q, struct bio *bio)
{
 struct rsxx_cardinfo *card = q->queuedata;
 struct rsxx_bio_meta *bio_meta;
 blk_status_t st = BLK_STS_IOERR;

 blk_queue_split(q, &bio);

 might_sleep();

 if (!card)
  goto req_err;

 if (bio_end_sector(bio) > get_capacity(card->gendisk))
  goto req_err;

 if (unlikely(card->halt))
  goto req_err;

 if (unlikely(card->dma_fault))
  goto req_err;

 if (bio->bi_iter.bi_size == 0) {
  dev_err(CARD_TO_DEV(card), "size zero BIO!\n");
  goto req_err;
 }

 bio_meta = kmem_cache_alloc(bio_meta_pool, GFP_KERNEL);
 if (!bio_meta) {
  st = BLK_STS_RESOURCE;
  goto req_err;
 }

 bio_meta->bio = bio;
 atomic_set(&bio_meta->error, 0);
 atomic_set(&bio_meta->pending_dmas, 0);
 bio_meta->start_time = jiffies;

 if (!unlikely(card->halt))
  disk_stats_start(card, bio);

 dev_dbg(CARD_TO_DEV(card), "BIO[%c]: meta: %p addr8: x%llx size: %d\n",
   bio_data_dir(bio) ? 'W' : 'R', bio_meta,
   (u64)bio->bi_iter.bi_sector << 9, bio->bi_iter.bi_size);

 st = rsxx_dma_queue_bio(card, bio, &bio_meta->pending_dmas,
        bio_dma_done_cb, bio_meta);
 if (st)
  goto queue_err;

 return BLK_QC_T_NONE;

queue_err:
 kmem_cache_free(bio_meta_pool, bio_meta);
req_err:
 if (st)
  bio->bi_status = st;
 bio_endio(bio);
 return BLK_QC_T_NONE;
}
