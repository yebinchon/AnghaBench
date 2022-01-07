
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* local_calloc ) (size_t,size_t) ;} ;


 void* stub1 (size_t,size_t) ;
 TYPE_1__ uv__allocator ;

void* uv__calloc(size_t count, size_t size) {
  return uv__allocator.local_calloc(count, size);
}
