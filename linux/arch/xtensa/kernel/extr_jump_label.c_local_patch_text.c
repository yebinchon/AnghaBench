
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_flush_icache_range (unsigned long,unsigned long) ;
 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static void local_patch_text(unsigned long addr, const void *data, size_t sz)
{
 memcpy((void *)addr, data, sz);
 local_flush_icache_range(addr, addr + sz);
}
