
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef unsigned int sector_t ;


 int EIO ;
 unsigned int bio_sectors (struct bio*) ;
 int handle_bad_sector (struct bio*,unsigned int) ;

__attribute__((used)) static inline int bio_check_eod(struct bio *bio, sector_t maxsector)
{
 unsigned int nr_sectors = bio_sectors(bio);

 if (nr_sectors && maxsector &&
     (nr_sectors > maxsector ||
      bio->bi_iter.bi_sector > maxsector - nr_sectors)) {
  handle_bad_sector(bio, maxsector);
  return -EIO;
 }
 return 0;
}
