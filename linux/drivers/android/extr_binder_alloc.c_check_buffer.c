
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct binder_buffer {int transaction; int allow_user_free; int free; } ;
struct binder_alloc {int dummy; } ;
typedef size_t binder_size_t ;


 scalar_t__ IS_ALIGNED (size_t,int) ;
 size_t binder_alloc_buffer_size (struct binder_alloc*,struct binder_buffer*) ;

__attribute__((used)) static inline bool check_buffer(struct binder_alloc *alloc,
    struct binder_buffer *buffer,
    binder_size_t offset, size_t bytes)
{
 size_t buffer_size = binder_alloc_buffer_size(alloc, buffer);

 return buffer_size >= bytes &&
  offset <= buffer_size - bytes &&
  IS_ALIGNED(offset, sizeof(u32)) &&
  !buffer->free &&
  (!buffer->allow_user_free || !buffer->transaction);
}
