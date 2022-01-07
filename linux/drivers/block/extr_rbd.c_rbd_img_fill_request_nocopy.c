
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct rbd_img_request {int object_extents; TYPE_1__* rbd_dev; int data_type; } ;
struct rbd_img_fill_ctx {int iter; int set_pos_fn; int * pos; int pos_type; } ;
struct ceph_file_extent {int fe_len; int fe_off; } ;
struct TYPE_2__ {int layout; } ;


 int __rbd_img_fill_request (struct rbd_img_request*) ;
 int alloc_object_extent ;
 int ceph_file_to_extents (int *,int ,int ,int *,int ,struct rbd_img_request*,int ,int *) ;

__attribute__((used)) static int rbd_img_fill_request_nocopy(struct rbd_img_request *img_req,
           struct ceph_file_extent *img_extents,
           u32 num_img_extents,
           struct rbd_img_fill_ctx *fctx)
{
 u32 i;
 int ret;

 img_req->data_type = fctx->pos_type;





 fctx->iter = *fctx->pos;
 for (i = 0; i < num_img_extents; i++) {
  ret = ceph_file_to_extents(&img_req->rbd_dev->layout,
        img_extents[i].fe_off,
        img_extents[i].fe_len,
        &img_req->object_extents,
        alloc_object_extent, img_req,
        fctx->set_pos_fn, &fctx->iter);
  if (ret)
   return ret;
 }

 return __rbd_img_fill_request(img_req);
}
