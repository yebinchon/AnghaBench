
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;


 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static inline const u8 *ecdh_unpack_data(void *dst, const void *src, size_t sz)
{
 memcpy(dst, src, sz);
 return src + sz;
}
