
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRINT_ALLOC (char*,int ,size_t,void*) ;
 int g_allocCount ;
 void* malloc (size_t) ;

void *MyAlloc(size_t size)
{
  if (size == 0)
    return ((void*)0);







  return malloc(size);

}
