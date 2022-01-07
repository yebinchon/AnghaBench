
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_icache_range (unsigned long,unsigned long) ;

__attribute__((used)) static inline void bpf_flush_icache(void *start, void *end)
{
 flush_icache_range((unsigned long)start, (unsigned long)end);
}
