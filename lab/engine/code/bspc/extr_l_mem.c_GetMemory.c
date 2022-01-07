
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Error (char*) ;
 scalar_t__ MemorySize (void*) ;
 int allocedmemory ;
 void* malloc (unsigned long) ;

void *GetMemory(unsigned long size)
{
 void *ptr;
 ptr = malloc(size);
 if (!ptr) Error("out of memory");
 allocedmemory += MemorySize(ptr);
 return ptr;
}
