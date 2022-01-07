
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct rbd_device {int header_oloc; int header_oid; TYPE_2__* rbd_client; } ;
struct parent_image_info {int has_overlap; int overlap; int snap_id; int * image_id; int pool_id; } ;
struct page {int dummy; } ;
struct ceph_osd_client {int dummy; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_osd_client osdc; } ;


 int CEPH_OSD_FLAG_READ ;
 int EINVAL ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 size_t PAGE_SIZE ;
 int PTR_ERR (int *) ;
 int ceph_decode_64_safe (void**,void*,int ,int ) ;
 int * ceph_extract_encoded_string (void**,void*,int *,int ) ;
 int ceph_osdc_call (struct ceph_osd_client*,int *,int *,char*,char*,int ,struct page*,int,struct page**,size_t*) ;
 int e_inval ;
 void* page_address (struct page*) ;

__attribute__((used)) static int __get_parent_info_legacy(struct rbd_device *rbd_dev,
        struct page *req_page,
        struct page *reply_page,
        struct parent_image_info *pii)
{
 struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
 size_t reply_len = PAGE_SIZE;
 void *p, *end;
 int ret;

 ret = ceph_osdc_call(osdc, &rbd_dev->header_oid, &rbd_dev->header_oloc,
        "rbd", "get_parent", CEPH_OSD_FLAG_READ,
        req_page, sizeof(u64), &reply_page, &reply_len);
 if (ret)
  return ret;

 p = page_address(reply_page);
 end = p + reply_len;
 ceph_decode_64_safe(&p, end, pii->pool_id, e_inval);
 pii->image_id = ceph_extract_encoded_string(&p, end, ((void*)0), GFP_KERNEL);
 if (IS_ERR(pii->image_id)) {
  ret = PTR_ERR(pii->image_id);
  pii->image_id = ((void*)0);
  return ret;
 }
 ceph_decode_64_safe(&p, end, pii->snap_id, e_inval);
 pii->has_overlap = 1;
 ceph_decode_64_safe(&p, end, pii->overlap, e_inval);

 return 0;

e_inval:
 return -EINVAL;
}
