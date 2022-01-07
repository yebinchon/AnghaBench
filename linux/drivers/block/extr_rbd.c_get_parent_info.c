
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_device {TYPE_1__* spec; } ;
struct parent_image_info {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int snap_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __free_page (struct page*) ;
 int __get_parent_info (struct rbd_device*,struct page*,struct page*,struct parent_image_info*) ;
 int __get_parent_info_legacy (struct rbd_device*,struct page*,struct page*,struct parent_image_info*) ;
 struct page* alloc_page (int ) ;
 int ceph_encode_64 (void**,int ) ;
 void* page_address (struct page*) ;

__attribute__((used)) static int get_parent_info(struct rbd_device *rbd_dev,
      struct parent_image_info *pii)
{
 struct page *req_page, *reply_page;
 void *p;
 int ret;

 req_page = alloc_page(GFP_KERNEL);
 if (!req_page)
  return -ENOMEM;

 reply_page = alloc_page(GFP_KERNEL);
 if (!reply_page) {
  __free_page(req_page);
  return -ENOMEM;
 }

 p = page_address(req_page);
 ceph_encode_64(&p, rbd_dev->spec->snap_id);
 ret = __get_parent_info(rbd_dev, req_page, reply_page, pii);
 if (ret > 0)
  ret = __get_parent_info_legacy(rbd_dev, req_page, reply_page,
            pii);

 __free_page(req_page);
 __free_page(reply_page);
 return ret;
}
