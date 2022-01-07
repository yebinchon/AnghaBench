
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 int EINVAL ;
 int ceph_decode_32_safe (void**,void*,int,int ) ;
 int ceph_decode_64_safe (void**,void*,int ,int ) ;
 int ceph_start_decoding (void**,void*,int,char*,int *,int*) ;
 int e_inval ;

__attribute__((used)) static int decode_object_map_header(void **p, void *end, u64 *object_map_size)
{
 u8 struct_v;
 u32 struct_len;
 u32 header_len;
 void *header_end;
 int ret;

 ceph_decode_32_safe(p, end, header_len, e_inval);
 header_end = *p + header_len;

 ret = ceph_start_decoding(p, end, 1, "BitVector header", &struct_v,
      &struct_len);
 if (ret)
  return ret;

 ceph_decode_64_safe(p, end, *object_map_size, e_inval);

 *p = header_end;
 return 0;

e_inval:
 return -EINVAL;
}
