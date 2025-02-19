
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct rbd_device {int header_oloc; int header_oid; TYPE_2__* rbd_client; } ;
struct parent_image_info {int overlap; int has_overlap; } ;
struct page {int dummy; } ;
struct ceph_osd_client {int dummy; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_osd_client osdc; } ;


 int CEPH_OSD_FLAG_READ ;
 int EINVAL ;
 int EOPNOTSUPP ;
 size_t PAGE_SIZE ;
 int ceph_decode_64_safe (void**,void*,int ,int ) ;
 int ceph_decode_8_safe (void**,void*,int ,int ) ;
 int ceph_osdc_call (struct ceph_osd_client*,int *,int *,char*,char*,int ,struct page*,int,struct page**,size_t*) ;
 int decode_parent_image_spec (void**,void*,struct parent_image_info*) ;
 int e_inval ;
 void* page_address (struct page*) ;

__attribute__((used)) static int __get_parent_info(struct rbd_device *rbd_dev,
        struct page *req_page,
        struct page *reply_page,
        struct parent_image_info *pii)
{
 struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
 size_t reply_len = PAGE_SIZE;
 void *p, *end;
 int ret;

 ret = ceph_osdc_call(osdc, &rbd_dev->header_oid, &rbd_dev->header_oloc,
        "rbd", "parent_get", CEPH_OSD_FLAG_READ,
        req_page, sizeof(u64), &reply_page, &reply_len);
 if (ret)
  return ret == -EOPNOTSUPP ? 1 : ret;

 p = page_address(reply_page);
 end = p + reply_len;
 ret = decode_parent_image_spec(&p, end, pii);
 if (ret)
  return ret;

 ret = ceph_osdc_call(osdc, &rbd_dev->header_oid, &rbd_dev->header_oloc,
        "rbd", "parent_overlap_get", CEPH_OSD_FLAG_READ,
        req_page, sizeof(u64), &reply_page, &reply_len);
 if (ret)
  return ret;

 p = page_address(reply_page);
 end = p + reply_len;
 ceph_decode_8_safe(&p, end, pii->has_overlap, e_inval);
 if (pii->has_overlap)
  ceph_decode_64_safe(&p, end, pii->overlap, e_inval);

 return 0;

e_inval:
 return -EINVAL;
}
