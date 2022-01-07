
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* local_realloc ) (void*,size_t) ;} ;


 void* stub1 (void*,size_t) ;
 TYPE_1__ uv__allocator ;
 int uv__free (void*) ;

void* uv__realloc(void* ptr, size_t size) {
  if (size > 0)
    return uv__allocator.local_realloc(ptr, size);
  uv__free(ptr);
  return ((void*)0);
}
