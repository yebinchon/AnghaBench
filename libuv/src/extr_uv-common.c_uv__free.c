
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* local_free ) (void*) ;} ;


 int errno ;
 int stub1 (void*) ;
 TYPE_1__ uv__allocator ;

void uv__free(void* ptr) {
  int saved_errno;




  saved_errno = errno;
  uv__allocator.local_free(ptr);
  errno = saved_errno;
}
