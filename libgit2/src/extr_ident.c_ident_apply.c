
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filter_source ;
typedef void* git_filter ;
typedef int git_buf ;


 scalar_t__ GIT_FILTER_SMUDGE ;
 int GIT_PASSTHROUGH ;
 int GIT_UNUSED (void**) ;
 scalar_t__ git_buf_text_is_binary (int const*) ;
 scalar_t__ git_filter_source_mode (int const*) ;
 int ident_insert_id (int *,int const*,int const*) ;
 int ident_remove_id (int *,int const*) ;

__attribute__((used)) static int ident_apply(
 git_filter *self,
 void **payload,
 git_buf *to,
 const git_buf *from,
 const git_filter_source *src)
{
 GIT_UNUSED(self); GIT_UNUSED(payload);


 if (git_buf_text_is_binary(from))
  return GIT_PASSTHROUGH;

 if (git_filter_source_mode(src) == GIT_FILTER_SMUDGE)
  return ident_insert_id(to, from, src);
 else
  return ident_remove_id(to, from);
}
