
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 void* cvmx_bootmem_alloc_named_range (int ,int ,int ,int ,char*) ;

void *cvmx_bootmem_alloc_named(uint64_t size, uint64_t alignment, char *name)
{
    return cvmx_bootmem_alloc_named_range(size, 0, 0, alignment, name);
}
