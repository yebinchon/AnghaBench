
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rbd_device {TYPE_2__* rbd_client; } ;
struct page {int dummy; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_osd_client osdc; } ;


 int CEPH_OSD_FLAG_READ ;
 int E2BIG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 int RBD_DRV_NAME ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int ceph_osdc_call (struct ceph_osd_client*,struct ceph_object_id*,struct ceph_object_locator*,int ,char const*,int ,struct page*,size_t,struct page**,size_t*) ;
 int memcpy (void*,void const*,size_t) ;
 void const* page_address (struct page*) ;

__attribute__((used)) static int rbd_obj_method_sync(struct rbd_device *rbd_dev,
        struct ceph_object_id *oid,
        struct ceph_object_locator *oloc,
        const char *method_name,
        const void *outbound,
        size_t outbound_size,
        void *inbound,
        size_t inbound_size)
{
 struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
 struct page *req_page = ((void*)0);
 struct page *reply_page;
 int ret;
 if (outbound) {
  if (outbound_size > PAGE_SIZE)
   return -E2BIG;

  req_page = alloc_page(GFP_KERNEL);
  if (!req_page)
   return -ENOMEM;

  memcpy(page_address(req_page), outbound, outbound_size);
 }

 reply_page = alloc_page(GFP_KERNEL);
 if (!reply_page) {
  if (req_page)
   __free_page(req_page);
  return -ENOMEM;
 }

 ret = ceph_osdc_call(osdc, oid, oloc, RBD_DRV_NAME, method_name,
        CEPH_OSD_FLAG_READ, req_page, outbound_size,
        &reply_page, &inbound_size);
 if (!ret) {
  memcpy(inbound, page_address(reply_page), inbound_size);
  ret = inbound_size;
 }

 if (req_page)
  __free_page(req_page);
 __free_page(reply_page);
 return ret;
}
