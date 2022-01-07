
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct page {int dummy; } ;
struct ceph_osd_request {int dummy; } ;


 int GFP_NOIO ;
 scalar_t__ IS_ERR (struct page**) ;
 int PTR_ERR (struct page**) ;
 struct page** ceph_alloc_page_vector (int,int ) ;
 int ceph_encode_64 (void**,scalar_t__) ;
 int ceph_encode_8 (void**,int const) ;
 int osd_req_op_cls_init (struct ceph_osd_request*,int,char*,char*) ;
 int osd_req_op_cls_request_data_pages (struct ceph_osd_request*,int,struct page**,int,int ,int,int) ;
 void* page_address (struct page*) ;

__attribute__((used)) static int rbd_cls_object_map_update(struct ceph_osd_request *req,
         int which, u64 objno, u8 new_state,
         const u8 *current_state)
{
 struct page **pages;
 void *p, *start;
 int ret;

 ret = osd_req_op_cls_init(req, which, "rbd", "object_map_update");
 if (ret)
  return ret;

 pages = ceph_alloc_page_vector(1, GFP_NOIO);
 if (IS_ERR(pages))
  return PTR_ERR(pages);

 p = start = page_address(pages[0]);
 ceph_encode_64(&p, objno);
 ceph_encode_64(&p, objno + 1);
 ceph_encode_8(&p, new_state);
 if (current_state) {
  ceph_encode_8(&p, 1);
  ceph_encode_8(&p, *current_state);
 } else {
  ceph_encode_8(&p, 0);
 }

 osd_req_op_cls_request_data_pages(req, which, pages, p - start, 0,
       0, 1);
 return 0;
}
