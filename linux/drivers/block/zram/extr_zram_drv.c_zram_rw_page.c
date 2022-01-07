
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int invalid_io; } ;
struct zram {TYPE_2__ stats; } ;
struct page {int dummy; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct bio_vec {scalar_t__ bv_offset; int bv_len; struct page* bv_page; } ;
typedef int sector_t ;
struct TYPE_3__ {struct zram* private_data; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int PAGE_SIZE ;
 scalar_t__ PageTransHuge (struct page*) ;
 int SECTORS_PER_PAGE ;
 int SECTORS_PER_PAGE_SHIFT ;
 int SECTOR_SHIFT ;
 int WARN_ON (int) ;
 int atomic64_inc (int *) ;
 int op_is_write (unsigned int) ;
 int page_endio (struct page*,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int valid_io_request (struct zram*,int,int ) ;
 int zram_bvec_rw (struct zram*,struct bio_vec*,int,int,unsigned int,int *) ;

__attribute__((used)) static int zram_rw_page(struct block_device *bdev, sector_t sector,
         struct page *page, unsigned int op)
{
 int offset, ret;
 u32 index;
 struct zram *zram;
 struct bio_vec bv;

 if (PageTransHuge(page))
  return -ENOTSUPP;
 zram = bdev->bd_disk->private_data;

 if (!valid_io_request(zram, sector, PAGE_SIZE)) {
  atomic64_inc(&zram->stats.invalid_io);
  ret = -EINVAL;
  goto out;
 }

 index = sector >> SECTORS_PER_PAGE_SHIFT;
 offset = (sector & (SECTORS_PER_PAGE - 1)) << SECTOR_SHIFT;

 bv.bv_page = page;
 bv.bv_len = PAGE_SIZE;
 bv.bv_offset = 0;

 ret = zram_bvec_rw(zram, &bv, index, offset, op, ((void*)0));
out:
 if (unlikely(ret < 0))
  return ret;

 switch (ret) {
 case 0:
  page_endio(page, op_is_write(op), 0);
  break;
 case 1:
  ret = 0;
  break;
 default:
  WARN_ON(1);
 }
 return ret;
}
