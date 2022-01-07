
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptr; int size; } ;
typedef TYPE_1__ git_buf ;


 scalar_t__ GIT_ADD_SIZET_OVERFLOW (size_t*,int ,size_t) ;
 int git_buf__oom ;
 int git_buf_try_grow (TYPE_1__*,size_t,int) ;

int git_buf_grow_by(git_buf *buffer, size_t additional_size)
{
 size_t newsize;

 if (GIT_ADD_SIZET_OVERFLOW(&newsize, buffer->size, additional_size)) {
  buffer->ptr = git_buf__oom;
  return -1;
 }

 return git_buf_try_grow(buffer, newsize, 1);
}
