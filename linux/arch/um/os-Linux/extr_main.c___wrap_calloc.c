
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __wrap_malloc (int) ;
 int memset (void*,int ,int) ;

void *__wrap_calloc(int n, int size)
{
 void *ptr = __wrap_malloc(n * size);

 if (ptr == ((void*)0))
  return ((void*)0);
 memset(ptr, 0, n * size);
 return ptr;
}
