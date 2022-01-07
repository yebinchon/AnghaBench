
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brd_device {int brd_queue; int brd_disk; } ;


 int blk_cleanup_queue (int ) ;
 int brd_free_pages (struct brd_device*) ;
 int kfree (struct brd_device*) ;
 int put_disk (int ) ;

__attribute__((used)) static void brd_free(struct brd_device *brd)
{
 put_disk(brd->brd_disk);
 blk_cleanup_queue(brd->brd_queue);
 brd_free_pages(brd);
 kfree(brd);
}
