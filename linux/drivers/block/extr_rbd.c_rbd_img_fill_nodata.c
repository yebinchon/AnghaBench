
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union rbd_img_fill_iter {int dummy; } rbd_img_fill_iter ;
typedef int u64 ;
struct rbd_img_request {int dummy; } ;
struct rbd_img_fill_ctx {union rbd_img_fill_iter* pos; int pos_type; } ;
struct ceph_file_extent {int member_1; int member_0; } ;


 int OBJ_REQUEST_NODATA ;
 int rbd_img_fill_request (struct rbd_img_request*,struct ceph_file_extent*,int,struct rbd_img_fill_ctx*) ;

__attribute__((used)) static int rbd_img_fill_nodata(struct rbd_img_request *img_req,
          u64 off, u64 len)
{
 struct ceph_file_extent ex = { off, len };
 union rbd_img_fill_iter dummy;
 struct rbd_img_fill_ctx fctx = {
  .pos_type = OBJ_REQUEST_NODATA,
  .pos = &dummy,
 };

 return rbd_img_fill_request(img_req, &ex, 1, &fctx);
}
