
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_pool ;
struct TYPE_10__ {scalar_t__ status; } ;
typedef TYPE_1__ git_diff_delta ;


 scalar_t__ GIT_DELTA_DELETED ;
 scalar_t__ GIT_DELTA_MODIFIED ;
 scalar_t__ GIT_DELTA_UNTRACKED ;
 TYPE_1__* git_diff__delta_dup (TYPE_1__ const*,int *) ;
 TYPE_1__* git_diff__merge_like_cgit (TYPE_1__ const*,TYPE_1__ const*,int *) ;

__attribute__((used)) static git_diff_delta *stash_delta_merge(
 const git_diff_delta *a,
 const git_diff_delta *b,
 git_pool *pool)
{



 if (a->status == GIT_DELTA_DELETED && b->status == GIT_DELTA_UNTRACKED) {
  git_diff_delta *dup = git_diff__delta_dup(b, pool);

  if (dup)
   dup->status = GIT_DELTA_MODIFIED;
  return dup;
 }

 return git_diff__merge_like_cgit(a, b, pool);
}
