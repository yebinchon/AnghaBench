
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MemorySize (void*) ;
 int allocedmemory ;
 int free (void*) ;

void FreeMemory(void *ptr)
{
 allocedmemory -= MemorySize(ptr);
 free(ptr);
}
