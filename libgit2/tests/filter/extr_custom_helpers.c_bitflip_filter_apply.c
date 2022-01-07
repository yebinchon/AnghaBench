
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_filter_source ;
typedef void* git_filter ;
struct TYPE_5__ {size_t size; scalar_t__ ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_UNUSED (void**) ;
 unsigned char VERY_SECURE_ENCRYPTION (unsigned char const) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git__strncmp (char*,int ,int) ;
 int git_buf_grow (TYPE_1__*,size_t) ;
 int git_filter_source_path (int const*) ;

int bitflip_filter_apply(
 git_filter *self,
 void **payload,
 git_buf *to,
 const git_buf *from,
 const git_filter_source *source)
{
 const unsigned char *src = (const unsigned char *)from->ptr;
 unsigned char *dst;
 size_t i;

 GIT_UNUSED(self); GIT_UNUSED(payload);


 cl_assert_equal_i(
  0, git__strncmp("hero", git_filter_source_path(source), 4));

 if (!from->size)
  return 0;

 cl_git_pass(git_buf_grow(to, from->size));

 dst = (unsigned char *)to->ptr;

 for (i = 0; i < from->size; i++)
  dst[i] = VERY_SECURE_ENCRYPTION(src[i]);

 to->size = from->size;

 return 0;
}
