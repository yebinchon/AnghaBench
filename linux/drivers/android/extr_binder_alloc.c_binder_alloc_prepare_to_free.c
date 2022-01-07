
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_buffer {int dummy; } ;
struct binder_alloc {int mutex; } ;


 struct binder_buffer* binder_alloc_prepare_to_free_locked (struct binder_alloc*,uintptr_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct binder_buffer *binder_alloc_prepare_to_free(struct binder_alloc *alloc,
         uintptr_t user_ptr)
{
 struct binder_buffer *buffer;

 mutex_lock(&alloc->mutex);
 buffer = binder_alloc_prepare_to_free_locked(alloc, user_ptr);
 mutex_unlock(&alloc->mutex);
 return buffer;
}
