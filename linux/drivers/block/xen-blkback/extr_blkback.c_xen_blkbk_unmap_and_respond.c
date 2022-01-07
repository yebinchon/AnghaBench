
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_blkif_ring {int dummy; } ;
struct gntab_unmap_queue_data {unsigned int count; int pages; int * kunmap_ops; int unmap_ops; int done; struct pending_req* data; } ;
struct pending_req {struct gntab_unmap_queue_data gnttab_unmap_data; int unmap_pages; int unmap; int nr_segs; struct grant_page** segments; struct xen_blkif_ring* ring; } ;
struct grant_page {int dummy; } ;


 int gnttab_unmap_refs_async (struct gntab_unmap_queue_data*) ;
 int xen_blkbk_unmap_and_respond_callback ;
 unsigned int xen_blkbk_unmap_prepare (struct xen_blkif_ring*,struct grant_page**,int ,int ,int ) ;

__attribute__((used)) static void xen_blkbk_unmap_and_respond(struct pending_req *req)
{
 struct gntab_unmap_queue_data* work = &req->gnttab_unmap_data;
 struct xen_blkif_ring *ring = req->ring;
 struct grant_page **pages = req->segments;
 unsigned int invcount;

 invcount = xen_blkbk_unmap_prepare(ring, pages, req->nr_segs,
        req->unmap, req->unmap_pages);

 work->data = req;
 work->done = xen_blkbk_unmap_and_respond_callback;
 work->unmap_ops = req->unmap;
 work->kunmap_ops = ((void*)0);
 work->pages = req->unmap_pages;
 work->count = invcount;

 gnttab_unmap_refs_async(&req->gnttab_unmap_data);
}
