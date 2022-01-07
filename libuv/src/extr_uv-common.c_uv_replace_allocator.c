
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * uv_realloc_func ;
typedef int * uv_malloc_func ;
typedef int * uv_free_func ;
typedef int * uv_calloc_func ;
struct TYPE_2__ {int * local_free; int * local_calloc; int * local_realloc; int * local_malloc; } ;


 int UV_EINVAL ;
 TYPE_1__ uv__allocator ;

int uv_replace_allocator(uv_malloc_func malloc_func,
                         uv_realloc_func realloc_func,
                         uv_calloc_func calloc_func,
                         uv_free_func free_func) {
  if (malloc_func == ((void*)0) || realloc_func == ((void*)0) ||
      calloc_func == ((void*)0) || free_func == ((void*)0)) {
    return UV_EINVAL;
  }

  uv__allocator.local_malloc = malloc_func;
  uv__allocator.local_realloc = realloc_func;
  uv__allocator.local_calloc = calloc_func;
  uv__allocator.local_free = free_func;

  return 0;
}
