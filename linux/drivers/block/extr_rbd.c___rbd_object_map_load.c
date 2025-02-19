
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u64 ;
struct TYPE_7__ {int size; } ;
struct rbd_device {size_t object_map_size; int object_map; int header_oloc; TYPE_4__* spec; TYPE_3__ mapping; int layout; TYPE_2__* rbd_client; } ;
struct page {int dummy; } ;
struct ceph_osd_client {int dummy; } ;
struct TYPE_8__ {int snap_id; } ;
struct TYPE_6__ {TYPE_1__* client; } ;
struct TYPE_5__ {struct ceph_osd_client osdc; } ;


 int BITS_PER_BYTE ;
 size_t BITS_PER_OBJ ;
 int CEPH_DEFINE_OID_ONSTACK (int ) ;
 int CEPH_OSD_FLAG_READ ;
 size_t DIV_ROUND_UP_ULL (size_t,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct page**) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page**) ;
 int calc_pages_for (int ,size_t) ;
 struct page** ceph_alloc_page_vector (int,int ) ;
 int ceph_copy_from_page_vector (struct page**,int ,size_t,size_t) ;
 size_t ceph_get_num_objects (int *,int ) ;
 int ceph_osdc_call (struct ceph_osd_client*,int *,int *,char*,char*,int ,int *,int ,struct page**,size_t*) ;
 int ceph_release_page_vector (struct page**,int) ;
 int decode_object_map_header (void**,void*,size_t*) ;
 int kvmalloc (size_t,int ) ;
 int min (size_t,size_t) ;
 size_t offset_in_page (void*) ;
 int oid ;
 void* page_address (struct page*) ;
 int rbd_assert (int) ;
 int rbd_object_map_name (struct rbd_device*,int ,int *) ;
 int rbd_warn (struct rbd_device*,char*,size_t,size_t) ;

__attribute__((used)) static int __rbd_object_map_load(struct rbd_device *rbd_dev)
{
 struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
 CEPH_DEFINE_OID_ONSTACK(oid);
 struct page **pages;
 void *p, *end;
 size_t reply_len;
 u64 num_objects;
 u64 object_map_bytes;
 u64 object_map_size;
 int num_pages;
 int ret;

 rbd_assert(!rbd_dev->object_map && !rbd_dev->object_map_size);

 num_objects = ceph_get_num_objects(&rbd_dev->layout,
        rbd_dev->mapping.size);
 object_map_bytes = DIV_ROUND_UP_ULL(num_objects * BITS_PER_OBJ,
         BITS_PER_BYTE);
 num_pages = calc_pages_for(0, object_map_bytes) + 1;
 pages = ceph_alloc_page_vector(num_pages, GFP_KERNEL);
 if (IS_ERR(pages))
  return PTR_ERR(pages);

 reply_len = num_pages * PAGE_SIZE;
 rbd_object_map_name(rbd_dev, rbd_dev->spec->snap_id, &oid);
 ret = ceph_osdc_call(osdc, &oid, &rbd_dev->header_oloc,
        "rbd", "object_map_load", CEPH_OSD_FLAG_READ,
        ((void*)0), 0, pages, &reply_len);
 if (ret)
  goto out;

 p = page_address(pages[0]);
 end = p + min(reply_len, (size_t)PAGE_SIZE);
 ret = decode_object_map_header(&p, end, &object_map_size);
 if (ret)
  goto out;

 if (object_map_size != num_objects) {
  rbd_warn(rbd_dev, "object map size mismatch: %llu vs %llu",
    object_map_size, num_objects);
  ret = -EINVAL;
  goto out;
 }

 if (offset_in_page(p) + object_map_bytes > reply_len) {
  ret = -EINVAL;
  goto out;
 }

 rbd_dev->object_map = kvmalloc(object_map_bytes, GFP_KERNEL);
 if (!rbd_dev->object_map) {
  ret = -ENOMEM;
  goto out;
 }

 rbd_dev->object_map_size = object_map_size;
 ceph_copy_from_page_vector(pages, rbd_dev->object_map,
       offset_in_page(p), object_map_bytes);

out:
 ceph_release_page_vector(pages, num_pages);
 return ret;
}
