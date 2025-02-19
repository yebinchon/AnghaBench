
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_blkif_ring {int dummy; } ;
struct page {int dummy; } ;
struct grant_page {int dummy; } ;
struct gnttab_unmap_grant_ref {int dummy; } ;


 int BLKIF_MAX_SEGMENTS_PER_REQUEST ;
 int BUG_ON (int) ;
 int gnttab_unmap_refs (struct gnttab_unmap_grant_ref*,int *,struct page**,unsigned int) ;
 unsigned int min (int,int) ;
 int put_free_pages (struct xen_blkif_ring*,struct page**,unsigned int) ;
 unsigned int xen_blkbk_unmap_prepare (struct xen_blkif_ring*,struct grant_page**,unsigned int,struct gnttab_unmap_grant_ref*,struct page**) ;

__attribute__((used)) static void xen_blkbk_unmap(struct xen_blkif_ring *ring,
                            struct grant_page *pages[],
                            int num)
{
 struct gnttab_unmap_grant_ref unmap[BLKIF_MAX_SEGMENTS_PER_REQUEST];
 struct page *unmap_pages[BLKIF_MAX_SEGMENTS_PER_REQUEST];
 unsigned int invcount = 0;
 int ret;

 while (num) {
  unsigned int batch = min(num, BLKIF_MAX_SEGMENTS_PER_REQUEST);

  invcount = xen_blkbk_unmap_prepare(ring, pages, batch,
         unmap, unmap_pages);
  if (invcount) {
   ret = gnttab_unmap_refs(unmap, ((void*)0), unmap_pages, invcount);
   BUG_ON(ret);
   put_free_pages(ring, unmap_pages, invcount);
  }
  pages += batch;
  num -= batch;
 }
}
