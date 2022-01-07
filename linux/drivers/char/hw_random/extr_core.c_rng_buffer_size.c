
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMP_CACHE_BYTES ;

__attribute__((used)) static size_t rng_buffer_size(void)
{
 return SMP_CACHE_BYTES < 32 ? 32 : SMP_CACHE_BYTES;
}
