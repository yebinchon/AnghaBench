
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct parent_image_info {int snap_id; int * image_id; int * pool_ns; int pool_id; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int ceph_decode_64_safe (void**,void*,int ,int ) ;
 void* ceph_extract_encoded_string (void**,void*,int *,int ) ;
 int ceph_start_decoding (void**,void*,int,char*,int *,int *) ;
 int e_inval ;

__attribute__((used)) static int decode_parent_image_spec(void **p, void *end,
        struct parent_image_info *pii)
{
 u8 struct_v;
 u32 struct_len;
 int ret;

 ret = ceph_start_decoding(p, end, 1, "ParentImageSpec",
      &struct_v, &struct_len);
 if (ret)
  return ret;

 ceph_decode_64_safe(p, end, pii->pool_id, e_inval);
 pii->pool_ns = ceph_extract_encoded_string(p, end, ((void*)0), GFP_KERNEL);
 if (IS_ERR(pii->pool_ns)) {
  ret = PTR_ERR(pii->pool_ns);
  pii->pool_ns = ((void*)0);
  return ret;
 }
 pii->image_id = ceph_extract_encoded_string(p, end, ((void*)0), GFP_KERNEL);
 if (IS_ERR(pii->image_id)) {
  ret = PTR_ERR(pii->image_id);
  pii->image_id = ((void*)0);
  return ret;
 }
 ceph_decode_64_safe(p, end, pii->snap_id, e_inval);
 return 0;

e_inval:
 return -EINVAL;
}
