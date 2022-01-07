
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (int *,void const*,size_t) ;

__attribute__((used)) static inline u8 *dh_pack_data(u8 *dst, u8 *end, const void *src, size_t size)
{
 if (!dst || size > end - dst)
  return ((void*)0);
 memcpy(dst, src, size);
 return dst + size;
}
