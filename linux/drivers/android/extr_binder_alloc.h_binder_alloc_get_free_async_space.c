
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_alloc {size_t free_async_space; int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline size_t
binder_alloc_get_free_async_space(struct binder_alloc *alloc)
{
 size_t free_async_space;

 mutex_lock(&alloc->mutex);
 free_async_space = alloc->free_async_space;
 mutex_unlock(&alloc->mutex);
 return free_async_space;
}
