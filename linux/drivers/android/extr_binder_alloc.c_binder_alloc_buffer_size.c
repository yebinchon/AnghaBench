
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct binder_buffer {size_t user_data; int entry; } ;
struct binder_alloc {size_t buffer; size_t buffer_size; int buffers; } ;
struct TYPE_2__ {size_t user_data; } ;


 TYPE_1__* binder_buffer_next (struct binder_buffer*) ;
 scalar_t__ list_is_last (int *,int *) ;

__attribute__((used)) static size_t binder_alloc_buffer_size(struct binder_alloc *alloc,
           struct binder_buffer *buffer)
{
 if (list_is_last(&buffer->entry, &alloc->buffers))
  return alloc->buffer + alloc->buffer_size - buffer->user_data;
 return binder_buffer_next(buffer)->user_data - buffer->user_data;
}
