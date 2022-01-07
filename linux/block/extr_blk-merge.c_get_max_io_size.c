
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;


 unsigned int SECTOR_SHIFT ;
 unsigned int blk_max_size_offset (struct request_queue*,unsigned int) ;
 unsigned int queue_logical_block_size (struct request_queue*) ;
 unsigned int queue_physical_block_size (struct request_queue*) ;

__attribute__((used)) static inline unsigned get_max_io_size(struct request_queue *q,
           struct bio *bio)
{
 unsigned sectors = blk_max_size_offset(q, bio->bi_iter.bi_sector);
 unsigned max_sectors = sectors;
 unsigned pbs = queue_physical_block_size(q) >> SECTOR_SHIFT;
 unsigned lbs = queue_logical_block_size(q) >> SECTOR_SHIFT;
 unsigned start_offset = bio->bi_iter.bi_sector & (pbs - 1);

 max_sectors += start_offset;
 max_sectors &= ~(pbs - 1);
 if (max_sectors > start_offset)
  return max_sectors - start_offset;

 return sectors & (lbs - 1);
}
