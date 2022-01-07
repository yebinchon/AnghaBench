
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FIQ_OFFSET ;
 int cache_is_vipt_nonaliasing () ;
 int flush_icache_range (int,int) ;
 int memcpy (void*,void*,unsigned int) ;
 void* vectors_page ;

void set_fiq_handler(void *start, unsigned int length)
{
 void *base = vectors_page;
 unsigned offset = FIQ_OFFSET;

 memcpy(base + offset, start, length);
 if (!cache_is_vipt_nonaliasing())
  flush_icache_range((unsigned long)base + offset, offset +
       length);
 flush_icache_range(0xffff0000 + offset, 0xffff0000 + offset + length);
}
