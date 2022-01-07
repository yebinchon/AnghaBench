
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct brd_device {int dummy; } ;
typedef int sector_t ;


 int copy_from_brd (void*,struct brd_device*,int ,unsigned int) ;
 int copy_to_brd (struct brd_device*,void*,int ,unsigned int) ;
 int copy_to_brd_setup (struct brd_device*,int ,unsigned int) ;
 int flush_dcache_page (struct page*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 scalar_t__ op_is_write (unsigned int) ;

__attribute__((used)) static int brd_do_bvec(struct brd_device *brd, struct page *page,
   unsigned int len, unsigned int off, unsigned int op,
   sector_t sector)
{
 void *mem;
 int err = 0;

 if (op_is_write(op)) {
  err = copy_to_brd_setup(brd, sector, len);
  if (err)
   goto out;
 }

 mem = kmap_atomic(page);
 if (!op_is_write(op)) {
  copy_from_brd(mem + off, brd, sector, len);
  flush_dcache_page(page);
 } else {
  flush_dcache_page(page);
  copy_to_brd(brd, mem + off, sector, len);
 }
 kunmap_atomic(mem);

out:
 return err;
}
