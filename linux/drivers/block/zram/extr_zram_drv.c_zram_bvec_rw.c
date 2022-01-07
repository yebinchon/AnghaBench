
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int failed_writes; int failed_reads; int num_writes; int num_reads; } ;
struct zram {TYPE_2__ stats; TYPE_1__* disk; } ;
struct request_queue {int dummy; } ;
struct bio_vec {int bv_len; int bv_page; } ;
struct bio {int dummy; } ;
struct TYPE_3__ {int part0; struct request_queue* queue; } ;


 int SECTOR_SHIFT ;
 int atomic64_inc (int *) ;
 int flush_dcache_page (int ) ;
 int generic_end_io_acct (struct request_queue*,unsigned int,int *,unsigned long) ;
 int generic_start_io_acct (struct request_queue*,unsigned int,int,int *) ;
 unsigned long jiffies ;
 int op_is_write (unsigned int) ;
 scalar_t__ unlikely (int) ;
 int zram_accessed (struct zram*,int ) ;
 int zram_bvec_read (struct zram*,struct bio_vec*,int ,int,struct bio*) ;
 int zram_bvec_write (struct zram*,struct bio_vec*,int ,int,struct bio*) ;
 int zram_slot_lock (struct zram*,int ) ;
 int zram_slot_unlock (struct zram*,int ) ;

__attribute__((used)) static int zram_bvec_rw(struct zram *zram, struct bio_vec *bvec, u32 index,
   int offset, unsigned int op, struct bio *bio)
{
 unsigned long start_time = jiffies;
 struct request_queue *q = zram->disk->queue;
 int ret;

 generic_start_io_acct(q, op, bvec->bv_len >> SECTOR_SHIFT,
   &zram->disk->part0);

 if (!op_is_write(op)) {
  atomic64_inc(&zram->stats.num_reads);
  ret = zram_bvec_read(zram, bvec, index, offset, bio);
  flush_dcache_page(bvec->bv_page);
 } else {
  atomic64_inc(&zram->stats.num_writes);
  ret = zram_bvec_write(zram, bvec, index, offset, bio);
 }

 generic_end_io_acct(q, op, &zram->disk->part0, start_time);

 zram_slot_lock(zram, index);
 zram_accessed(zram, index);
 zram_slot_unlock(zram, index);

 if (unlikely(ret < 0)) {
  if (!op_is_write(op))
   atomic64_inc(&zram->stats.failed_reads);
  else
   atomic64_inc(&zram->stats.failed_writes);
 }

 return ret;
}
