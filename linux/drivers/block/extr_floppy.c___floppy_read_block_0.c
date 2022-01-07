
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb0_cbdata {int drive; int complete; } ;
struct page {int dummy; } ;
struct block_device {size_t bd_block_size; } ;
struct bio_vec {int dummy; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {int bi_flags; int bi_end_io; struct rb0_cbdata* bi_private; TYPE_1__ bi_iter; } ;


 int BIO_QUIET ;
 int ENOMEM ;
 int GFP_NOIO ;
 int REQ_OP_READ ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int bio_add_page (struct bio*,struct page*,size_t,int ) ;
 int bio_init (struct bio*,struct bio_vec*,int) ;
 int bio_set_dev (struct bio*,struct block_device*) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;
 int floppy_rb0_cb ;
 int init_completion (int *) ;
 int process_fd_request () ;
 int submit_bio (struct bio*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int __floppy_read_block_0(struct block_device *bdev, int drive)
{
 struct bio bio;
 struct bio_vec bio_vec;
 struct page *page;
 struct rb0_cbdata cbdata;
 size_t size;

 page = alloc_page(GFP_NOIO);
 if (!page) {
  process_fd_request();
  return -ENOMEM;
 }

 size = bdev->bd_block_size;
 if (!size)
  size = 1024;

 cbdata.drive = drive;

 bio_init(&bio, &bio_vec, 1);
 bio_set_dev(&bio, bdev);
 bio_add_page(&bio, page, size, 0);

 bio.bi_iter.bi_sector = 0;
 bio.bi_flags |= (1 << BIO_QUIET);
 bio.bi_private = &cbdata;
 bio.bi_end_io = floppy_rb0_cb;
 bio_set_op_attrs(&bio, REQ_OP_READ, 0);

 init_completion(&cbdata.complete);

 submit_bio(&bio);
 process_fd_request();

 wait_for_completion(&cbdata.complete);

 __free_page(page);

 return 0;
}
