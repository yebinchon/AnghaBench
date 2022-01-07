
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_dcache_range (unsigned long,unsigned long) ;
 int memcpy (void*,void const*,size_t) ;

void *memcpy_flushcache(void *dest, const void *src, size_t size)
{
 unsigned long start = (unsigned long) dest;

 memcpy(dest, src, size);
 flush_dcache_range(start, start + size);

 return dest;
}
