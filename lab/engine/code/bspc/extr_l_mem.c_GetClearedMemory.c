
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Error (char*) ;
 scalar_t__ MemorySize (void*) ;
 int allocedmemory ;
 scalar_t__ malloc (int) ;
 int memset (void*,int ,int) ;

void *GetClearedMemory(int size)
{
 void *ptr;

 ptr = (void *) malloc(size);
 if (!ptr) Error("out of memory");
 memset(ptr, 0, size);
 allocedmemory += MemorySize(ptr);
 return ptr;
}
