
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_pool ;
struct TYPE_8__ {int flags; int size; int mode; int id; } ;
struct TYPE_9__ {scalar_t__ status; int nfiles; TYPE_1__ old_file; } ;
typedef TYPE_2__ git_diff_delta ;


 scalar_t__ GIT_DELTA_ADDED ;
 scalar_t__ GIT_DELTA_CONFLICTED ;
 scalar_t__ GIT_DELTA_DELETED ;
 scalar_t__ GIT_DELTA_UNMODIFIED ;
 scalar_t__ GIT_DELTA_UNREADABLE ;
 scalar_t__ GIT_DELTA_UNTRACKED ;
 int assert (int) ;
 TYPE_2__* git_diff__delta_dup (TYPE_2__ const*,int *) ;
 int git_oid_cpy (int *,int *) ;

git_diff_delta *git_diff__merge_like_cgit(
 const git_diff_delta *a,
 const git_diff_delta *b,
 git_pool *pool)
{
 git_diff_delta *dup;
 if (b->status == GIT_DELTA_CONFLICTED)
  return git_diff__delta_dup(b, pool);
 if (a->status == GIT_DELTA_CONFLICTED)
  return git_diff__delta_dup(a, pool);


 if (b->status == GIT_DELTA_UNMODIFIED || a->status == GIT_DELTA_DELETED)
  return git_diff__delta_dup(a, pool);


 if ((dup = git_diff__delta_dup(b, pool)) == ((void*)0))
  return ((void*)0);


 if (a->status == GIT_DELTA_UNMODIFIED ||
  a->status == GIT_DELTA_UNTRACKED ||
  a->status == GIT_DELTA_UNREADABLE)
  return dup;

 assert(b->status != GIT_DELTA_UNMODIFIED);




 if (dup->status == GIT_DELTA_DELETED) {
  if (a->status == GIT_DELTA_ADDED) {
   dup->status = GIT_DELTA_UNMODIFIED;
   dup->nfiles = 2;
  }

 } else {
  dup->status = a->status;
  dup->nfiles = a->nfiles;
 }

 git_oid_cpy(&dup->old_file.id, &a->old_file.id);
 dup->old_file.mode = a->old_file.mode;
 dup->old_file.size = a->old_file.size;
 dup->old_file.flags = a->old_file.flags;

 return dup;
}
