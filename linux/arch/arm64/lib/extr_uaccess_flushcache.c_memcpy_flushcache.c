
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clean_dcache_area_pop (void*,size_t) ;
 int memcpy (void*,void const*,size_t) ;

void memcpy_flushcache(void *dst, const void *src, size_t cnt)
{





 memcpy(dst, src, cnt);
 __clean_dcache_area_pop(dst, cnt);
}
