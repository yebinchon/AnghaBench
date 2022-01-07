
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sector_t ;


 scalar_t__ BIO_MAX_PAGES ;
 int DIV_ROUND_UP_SECTOR_T (int ,int) ;
 int PAGE_SIZE ;
 unsigned int min (int ,int ) ;

__attribute__((used)) static unsigned int __blkdev_sectors_to_bio_pages(sector_t nr_sects)
{
 sector_t pages = DIV_ROUND_UP_SECTOR_T(nr_sects, PAGE_SIZE / 512);

 return min(pages, (sector_t)BIO_MAX_PAGES);
}
