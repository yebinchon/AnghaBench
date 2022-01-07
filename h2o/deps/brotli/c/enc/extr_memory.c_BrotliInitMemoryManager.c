
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int brotli_free_func ;
typedef scalar_t__ brotli_alloc_func ;
struct TYPE_3__ {scalar_t__ new_freed; scalar_t__ new_allocated; scalar_t__ perm_allocated; int is_oom; void* opaque; int free_func; scalar_t__ alloc_func; } ;
typedef TYPE_1__ MemoryManager ;


 int BROTLI_FALSE ;
 scalar_t__ DefaultAllocFunc ;
 int DefaultFreeFunc ;

void BrotliInitMemoryManager(
    MemoryManager* m, brotli_alloc_func alloc_func, brotli_free_func free_func,
    void* opaque) {
  if (!alloc_func) {
    m->alloc_func = DefaultAllocFunc;
    m->free_func = DefaultFreeFunc;
    m->opaque = 0;
  } else {
    m->alloc_func = alloc_func;
    m->free_func = free_func;
    m->opaque = opaque;
  }

  m->is_oom = BROTLI_FALSE;
  m->perm_allocated = 0;
  m->new_allocated = 0;
  m->new_freed = 0;

}
