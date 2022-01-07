
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_revwalk ;
typedef int git_repository ;
typedef int git_rebase_operation ;
struct TYPE_4__ {int repo; } ;
typedef TYPE_1__ git_rebase ;
typedef int git_oid ;
typedef int git_commit ;
typedef int git_annotated_commit ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int GIT_REBASE_OPERATION_PICK ;
 int GIT_SORT_REVERSE ;
 int git_annotated_commit_id (int const*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int *,int *) ;
 int git_commit_parentcount (int *) ;
 int git_revwalk_free (int *) ;
 int git_revwalk_hide (int *,int ) ;
 int git_revwalk_new (int **,int ) ;
 int git_revwalk_next (int *,int *) ;
 int git_revwalk_push (int *,int ) ;
 int git_revwalk_sorting (int *,int ) ;
 int * rebase_operation_alloc (TYPE_1__*,int ,int *,int *) ;

__attribute__((used)) static int rebase_init_operations(
 git_rebase *rebase,
 git_repository *repo,
 const git_annotated_commit *branch,
 const git_annotated_commit *upstream,
 const git_annotated_commit *onto)
{
 git_revwalk *revwalk = ((void*)0);
 git_commit *commit;
 git_oid id;
 bool merge;
 git_rebase_operation *operation;
 int error;

 if (!upstream)
  upstream = onto;

 if ((error = git_revwalk_new(&revwalk, rebase->repo)) < 0 ||
  (error = git_revwalk_push(revwalk, git_annotated_commit_id(branch))) < 0 ||
  (error = git_revwalk_hide(revwalk, git_annotated_commit_id(upstream))) < 0)
  goto done;

 git_revwalk_sorting(revwalk, GIT_SORT_REVERSE);

 while ((error = git_revwalk_next(&id, revwalk)) == 0) {
  if ((error = git_commit_lookup(&commit, repo, &id)) < 0)
   goto done;

  merge = (git_commit_parentcount(commit) > 1);
  git_commit_free(commit);

  if (merge)
   continue;

  operation = rebase_operation_alloc(rebase, GIT_REBASE_OPERATION_PICK, &id, ((void*)0));
  GIT_ERROR_CHECK_ALLOC(operation);
 }

 error = 0;

done:
 git_revwalk_free(revwalk);
 return error;
}
