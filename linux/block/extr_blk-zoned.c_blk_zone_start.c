
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef int sector_t ;


 int blk_queue_zone_sectors (struct request_queue*) ;

__attribute__((used)) static inline sector_t blk_zone_start(struct request_queue *q,
          sector_t sector)
{
 sector_t zone_mask = blk_queue_zone_sectors(q) - 1;

 return sector & ~zone_mask;
}
