
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pathspec_match_context {int dummy; } ;
struct TYPE_4__ {size_t length; } ;
typedef TYPE_1__ git_vector ;
typedef int git_bitvec ;
typedef int git_attr_fnmatch ;


 scalar_t__ git_bitvec_get (int *,size_t) ;
 int * git_vector_get (TYPE_1__*,size_t) ;
 scalar_t__ pathspec_mark_pattern (int *,size_t) ;
 scalar_t__ pathspec_match_one (int const*,struct pathspec_match_context*,char const*) ;

__attribute__((used)) static size_t pathspec_mark_remaining(
 git_bitvec *used,
 git_vector *patterns,
 struct pathspec_match_context *ctxt,
 size_t start,
 const char *path0,
 const char *path1)
{
 size_t count = 0;

 if (path1 == path0)
  path1 = ((void*)0);

 for (; start < patterns->length; ++start) {
  const git_attr_fnmatch *pat = git_vector_get(patterns, start);

  if (git_bitvec_get(used, start))
   continue;

  if (path0 && pathspec_match_one(pat, ctxt, path0) > 0)
   count += pathspec_mark_pattern(used, start);
  else if (path1 && pathspec_match_one(pat, ctxt, path1) > 0)
   count += pathspec_mark_pattern(used, start);
 }

 return count;
}
