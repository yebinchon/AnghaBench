
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ceph_timespec {int dummy; } ;
struct ceph_osd_request {int dummy; } ;


 int CEPH_OSD_OP_STAT ;
 int GFP_NOIO ;
 scalar_t__ IS_ERR (struct page**) ;
 int PTR_ERR (struct page**) ;
 struct page** ceph_alloc_page_vector (int,int ) ;
 int osd_req_op_init (struct ceph_osd_request*,int,int ,int ) ;
 int osd_req_op_raw_data_in_pages (struct ceph_osd_request*,int,struct page**,int,int ,int,int) ;

__attribute__((used)) static int rbd_osd_setup_stat(struct ceph_osd_request *osd_req, int which)
{
 struct page **pages;
 pages = ceph_alloc_page_vector(1, GFP_NOIO);
 if (IS_ERR(pages))
  return PTR_ERR(pages);

 osd_req_op_init(osd_req, which, CEPH_OSD_OP_STAT, 0);
 osd_req_op_raw_data_in_pages(osd_req, which, pages,
         8 + sizeof(struct ceph_timespec),
         0, 0, 1);
 return 0;
}
