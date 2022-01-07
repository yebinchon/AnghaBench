
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_buffer {int dummy; } ;
struct binder_alloc {int dummy; } ;
typedef int binder_size_t ;


 int binder_alloc_do_buffer_copy (struct binder_alloc*,int,struct binder_buffer*,int ,void*,size_t) ;

int binder_alloc_copy_from_buffer(struct binder_alloc *alloc,
      void *dest,
      struct binder_buffer *buffer,
      binder_size_t buffer_offset,
      size_t bytes)
{
 return binder_alloc_do_buffer_copy(alloc, 0, buffer, buffer_offset,
        dest, bytes);
}
