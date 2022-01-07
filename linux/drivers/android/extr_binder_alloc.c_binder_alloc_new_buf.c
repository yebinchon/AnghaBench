
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_buffer {int dummy; } ;
struct binder_alloc {int mutex; } ;


 struct binder_buffer* binder_alloc_new_buf_locked (struct binder_alloc*,size_t,size_t,size_t,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct binder_buffer *binder_alloc_new_buf(struct binder_alloc *alloc,
        size_t data_size,
        size_t offsets_size,
        size_t extra_buffers_size,
        int is_async)
{
 struct binder_buffer *buffer;

 mutex_lock(&alloc->mutex);
 buffer = binder_alloc_new_buf_locked(alloc, data_size, offsets_size,
          extra_buffers_size, is_async);
 mutex_unlock(&alloc->mutex);
 return buffer;
}
