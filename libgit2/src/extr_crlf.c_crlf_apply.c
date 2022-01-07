
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filter_source ;
typedef int git_filter ;
typedef int git_buf ;


 scalar_t__ GIT_FILTER_SMUDGE ;
 int crlf_apply_to_odb (void*,int *,int const*,int const*) ;
 int crlf_apply_to_workdir (void*,int *,int const*) ;
 int crlf_check (int *,void**,int const*,int *) ;
 scalar_t__ git_filter_source_mode (int const*) ;

__attribute__((used)) static int crlf_apply(
 git_filter *self,
 void **payload,
 git_buf *to,
 const git_buf *from,
 const git_filter_source *src)
{

 if (!*payload) {
  int error = crlf_check(self, payload, src, ((void*)0));

  if (error < 0)
   return error;
 }

 if (git_filter_source_mode(src) == GIT_FILTER_SMUDGE)
  return crlf_apply_to_workdir(*payload, to, from);
 else
  return crlf_apply_to_odb(*payload, to, from, src);
}
