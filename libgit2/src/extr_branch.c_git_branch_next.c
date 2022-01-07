
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
typedef TYPE_1__ git_reference ;
typedef int git_branch_t ;
typedef int git_branch_iterator ;
struct TYPE_7__ {int flags; int iter; } ;
typedef TYPE_2__ branch_iter ;


 int GIT_BRANCH_LOCAL ;
 int GIT_BRANCH_REMOTE ;
 int GIT_REFS_HEADS_DIR ;
 int GIT_REFS_REMOTES_DIR ;
 int git__prefixcmp (int ,int ) ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_next (TYPE_1__**,int ) ;

int git_branch_next(git_reference **out, git_branch_t *out_type, git_branch_iterator *_iter)
{
 branch_iter *iter = (branch_iter *) _iter;
 git_reference *ref;
 int error;

 while ((error = git_reference_next(&ref, iter->iter)) == 0) {
  if ((iter->flags & GIT_BRANCH_LOCAL) &&
      !git__prefixcmp(ref->name, GIT_REFS_HEADS_DIR)) {
   *out = ref;
   *out_type = GIT_BRANCH_LOCAL;

   return 0;
  } else if ((iter->flags & GIT_BRANCH_REMOTE) &&
       !git__prefixcmp(ref->name, GIT_REFS_REMOTES_DIR)) {
   *out = ref;
   *out_type = GIT_BRANCH_REMOTE;

   return 0;
  } else {
   git_reference_free(ref);
  }
 }

 return error;
}
