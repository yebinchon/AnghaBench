
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct brd_device {int dummy; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int sector_t ;
struct TYPE_2__ {struct brd_device* private_data; } ;


 int ENOTSUPP ;
 int PAGE_SIZE ;
 scalar_t__ PageTransHuge (struct page*) ;
 int brd_do_bvec (struct brd_device*,struct page*,int ,int ,unsigned int,int ) ;
 int op_is_write (unsigned int) ;
 int page_endio (struct page*,int ,int) ;

__attribute__((used)) static int brd_rw_page(struct block_device *bdev, sector_t sector,
         struct page *page, unsigned int op)
{
 struct brd_device *brd = bdev->bd_disk->private_data;
 int err;

 if (PageTransHuge(page))
  return -ENOTSUPP;
 err = brd_do_bvec(brd, page, PAGE_SIZE, 0, op, sector);
 page_endio(page, op_is_write(op), err);
 return err;
}
