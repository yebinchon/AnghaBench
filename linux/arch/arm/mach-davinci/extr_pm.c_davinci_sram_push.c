
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_icache_range (unsigned long,unsigned long) ;
 int memcpy (void*,void*,unsigned int) ;

__attribute__((used)) static void davinci_sram_push(void *dest, void *src, unsigned int size)
{
 memcpy(dest, src, size);
 flush_icache_range((unsigned long)dest, (unsigned long)(dest + size));
}
