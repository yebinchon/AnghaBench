
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hd_struct {scalar_t__ start_sect; } ;
struct TYPE_3__ {scalar_t__ bi_sector; int bi_size; } ;
struct bio {scalar_t__ bi_partno; TYPE_1__ bi_iter; TYPE_2__* bi_disk; } ;
struct TYPE_4__ {int queue; } ;


 int EIO ;
 scalar_t__ REQ_OP_ZONE_RESET ;
 struct hd_struct* __disk_get_part (TYPE_2__*,scalar_t__) ;
 scalar_t__ bio_check_eod (struct bio*,int ) ;
 int bio_check_ro (struct bio*,struct hd_struct*) ;
 scalar_t__ bio_op (struct bio*) ;
 scalar_t__ bio_sectors (struct bio*) ;
 int part_devt (struct hd_struct*) ;
 int part_nr_sects_read (struct hd_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int should_fail_request (struct hd_struct*,int ) ;
 int trace_block_bio_remap (int ,struct bio*,int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int blk_partition_remap(struct bio *bio)
{
 struct hd_struct *p;
 int ret = -EIO;

 rcu_read_lock();
 p = __disk_get_part(bio->bi_disk, bio->bi_partno);
 if (unlikely(!p))
  goto out;
 if (unlikely(should_fail_request(p, bio->bi_iter.bi_size)))
  goto out;
 if (unlikely(bio_check_ro(bio, p)))
  goto out;





 if (bio_sectors(bio) || bio_op(bio) == REQ_OP_ZONE_RESET) {
  if (bio_check_eod(bio, part_nr_sects_read(p)))
   goto out;
  bio->bi_iter.bi_sector += p->start_sect;
  trace_block_bio_remap(bio->bi_disk->queue, bio, part_devt(p),
          bio->bi_iter.bi_sector - p->start_sect);
 }
 bio->bi_partno = 0;
 ret = 0;
out:
 rcu_read_unlock();
 return ret;
}
