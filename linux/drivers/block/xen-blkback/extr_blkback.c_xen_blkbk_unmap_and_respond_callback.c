
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_blkif_ring {int inflight; struct xen_blkif* blkif; } ;
struct xen_blkif {int drain_complete; int drain; } ;
struct pending_req {int status; int operation; int id; struct xen_blkif_ring* ring; } ;
struct gntab_unmap_queue_data {int count; int pages; scalar_t__ data; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int complete (int *) ;
 int free_req (struct xen_blkif_ring*,struct pending_req*) ;
 int make_response (struct xen_blkif_ring*,int ,int ,int ) ;
 int put_free_pages (struct xen_blkif_ring*,int ,int ) ;
 int xen_blkif_put (struct xen_blkif*) ;

__attribute__((used)) static void xen_blkbk_unmap_and_respond_callback(int result, struct gntab_unmap_queue_data *data)
{
 struct pending_req *pending_req = (struct pending_req *)(data->data);
 struct xen_blkif_ring *ring = pending_req->ring;
 struct xen_blkif *blkif = ring->blkif;



 BUG_ON(result);

 put_free_pages(ring, data->pages, data->count);
 make_response(ring, pending_req->id,
        pending_req->operation, pending_req->status);
 free_req(ring, pending_req);
 if (atomic_dec_and_test(&ring->inflight) && atomic_read(&blkif->drain)) {
  complete(&blkif->drain_complete);
 }
 xen_blkif_put(blkif);
}
