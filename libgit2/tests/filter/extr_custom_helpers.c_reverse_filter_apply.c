
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* git_filter_source ;
typedef void* const git_filter ;
struct TYPE_5__ {int size; scalar_t__ ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_UNUSED (void* const*) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git__strncmp (char*,int ,int) ;
 int git_buf_grow (TYPE_1__*,int) ;
 int git_filter_source_path (void* const*) ;

int reverse_filter_apply(
 git_filter *self,
 void **payload,
 git_buf *to,
 const git_buf *from,
 const git_filter_source *source)
{
 const unsigned char *src = (const unsigned char *)from->ptr;
 const unsigned char *end = src + from->size;
 unsigned char *dst;

 GIT_UNUSED(self); GIT_UNUSED(payload); GIT_UNUSED(source);


 cl_assert_equal_i(
  0, git__strncmp("hero", git_filter_source_path(source), 4));

 if (!from->size)
  return 0;

 cl_git_pass(git_buf_grow(to, from->size));

 dst = (unsigned char *)to->ptr + from->size - 1;

 while (src < end)
  *dst-- = *src++;

 to->size = from->size;

 return 0;
}
