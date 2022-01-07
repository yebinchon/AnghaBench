
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct xen_blkif_ring {int dummy; } ;
struct seg_buf {int nsec; int offset; } ;
struct phys_req {int nr_sects; } ;
struct pending_req {int nr_segs; TYPE_3__** segments; struct xen_blkif_ring* ring; struct grant_page** indirect_pages; } ;
struct grant_page {int page; int gref; } ;
struct blkif_request_segment {int last_sect; int first_sect; int gref; } ;
struct TYPE_4__ {int * indirect_grefs; } ;
struct TYPE_5__ {TYPE_1__ indirect; } ;
struct blkif_request {TYPE_2__ u; } ;
struct TYPE_6__ {int gref; } ;


 int BLKIF_MAX_INDIRECT_PAGES_PER_REQUEST ;
 int BUG_ON (int) ;
 int EINVAL ;
 int INDIRECT_PAGES (int) ;
 int READ_ONCE (int ) ;
 int SEGS_PER_INDIRECT_FRAME ;
 int XEN_PAGE_SIZE ;
 struct blkif_request_segment* kmap_atomic (int ) ;
 int kunmap_atomic (struct blkif_request_segment*) ;
 int xen_blkbk_map (struct xen_blkif_ring*,struct grant_page**,int,int) ;
 int xen_blkbk_unmap (struct xen_blkif_ring*,struct grant_page**,int) ;

__attribute__((used)) static int xen_blkbk_parse_indirect(struct blkif_request *req,
        struct pending_req *pending_req,
        struct seg_buf seg[],
        struct phys_req *preq)
{
 struct grant_page **pages = pending_req->indirect_pages;
 struct xen_blkif_ring *ring = pending_req->ring;
 int indirect_grefs, rc, n, nseg, i;
 struct blkif_request_segment *segments = ((void*)0);

 nseg = pending_req->nr_segs;
 indirect_grefs = INDIRECT_PAGES(nseg);
 BUG_ON(indirect_grefs > BLKIF_MAX_INDIRECT_PAGES_PER_REQUEST);

 for (i = 0; i < indirect_grefs; i++)
  pages[i]->gref = req->u.indirect.indirect_grefs[i];

 rc = xen_blkbk_map(ring, pages, indirect_grefs, 1);
 if (rc)
  goto unmap;

 for (n = 0, i = 0; n < nseg; n++) {
  uint8_t first_sect, last_sect;

  if ((n % SEGS_PER_INDIRECT_FRAME) == 0) {

   if (segments)
    kunmap_atomic(segments);
   segments = kmap_atomic(pages[n/SEGS_PER_INDIRECT_FRAME]->page);
  }
  i = n % SEGS_PER_INDIRECT_FRAME;

  pending_req->segments[n]->gref = segments[i].gref;

  first_sect = READ_ONCE(segments[i].first_sect);
  last_sect = READ_ONCE(segments[i].last_sect);
  if (last_sect >= (XEN_PAGE_SIZE >> 9) || last_sect < first_sect) {
   rc = -EINVAL;
   goto unmap;
  }

  seg[n].nsec = last_sect - first_sect + 1;
  seg[n].offset = first_sect << 9;
  preq->nr_sects += seg[n].nsec;
 }

unmap:
 if (segments)
  kunmap_atomic(segments);
 xen_blkbk_unmap(ring, pages, indirect_grefs);
 return rc;
}
