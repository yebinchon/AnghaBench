
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsort_store {size_t alloc; void** storage; } ;


 void** git__reallocarray (void**,size_t,int) ;

__attribute__((used)) static int resize(struct tsort_store *store, size_t new_size)
{
 if (store->alloc < new_size) {
  void **tempstore;

  tempstore = git__reallocarray(store->storage, new_size, sizeof(void *));






  if (tempstore == ((void*)0))
   return -1;

  store->storage = tempstore;
  store->alloc = new_size;
 }

 return 0;
}
