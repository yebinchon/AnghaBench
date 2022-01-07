
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reference ;
struct TYPE_13__ {int inmemory; } ;
typedef TYPE_1__ git_rebase_options ;
struct TYPE_14__ {int inmemory; int type; int * repo; } ;
typedef TYPE_2__ git_rebase ;
typedef int git_annotated_commit ;


 int GIT_ERROR ;
 int GIT_REBASE_TYPE_MERGE ;
 int assert (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int *,int *) ;
 int git_rebase_free (TYPE_2__*) ;
 int git_reference_free (int *) ;
 int git_repository__ensure_not_bare (int *,char*) ;
 int git_repository_head (int **,int *) ;
 scalar_t__ rebase_alloc (TYPE_2__**,TYPE_1__ const*) ;
 int rebase_check_versions (TYPE_1__ const*) ;
 int rebase_cleanup (TYPE_2__*) ;
 int rebase_ensure_not_dirty (int *,int,int,int ) ;
 int rebase_ensure_not_in_progress (int *) ;
 int rebase_init_inmemory (TYPE_2__*,int *,int const*,int const*,int const*) ;
 int rebase_init_merge (TYPE_2__*,int *,int const*,int const*,int const*) ;
 int rebase_init_operations (TYPE_2__*,int *,int const*,int const*,int const*) ;

int git_rebase_init(
 git_rebase **out,
 git_repository *repo,
 const git_annotated_commit *branch,
 const git_annotated_commit *upstream,
 const git_annotated_commit *onto,
 const git_rebase_options *given_opts)
{
 git_rebase *rebase = ((void*)0);
 git_annotated_commit *head_branch = ((void*)0);
 git_reference *head_ref = ((void*)0);
 bool inmemory = (given_opts && given_opts->inmemory);
 int error;

 assert(repo && (upstream || onto));

 *out = ((void*)0);

 if (!onto)
  onto = upstream;

 if ((error = rebase_check_versions(given_opts)) < 0)
  goto done;

 if (!inmemory) {
  if ((error = git_repository__ensure_not_bare(repo, "rebase")) < 0 ||
   (error = rebase_ensure_not_in_progress(repo)) < 0 ||
   (error = rebase_ensure_not_dirty(repo, 1, 1, GIT_ERROR)) < 0)
   goto done;
 }

 if (!branch) {
  if ((error = git_repository_head(&head_ref, repo)) < 0 ||
   (error = git_annotated_commit_from_ref(&head_branch, repo, head_ref)) < 0)
   goto done;

  branch = head_branch;
 }

 if (rebase_alloc(&rebase, given_opts) < 0)
  return -1;

 rebase->repo = repo;
 rebase->inmemory = inmemory;
 rebase->type = GIT_REBASE_TYPE_MERGE;

 if ((error = rebase_init_operations(rebase, repo, branch, upstream, onto)) < 0)
  goto done;

 if (inmemory)
  error = rebase_init_inmemory(rebase, repo, branch, upstream, onto);
 else
  error = rebase_init_merge(rebase, repo, branch ,upstream, onto);

 if (error == 0)
  *out = rebase;

done:
 git_reference_free(head_ref);
 git_annotated_commit_free(head_branch);

 if (error < 0) {
  rebase_cleanup(rebase);
  git_rebase_free(rebase);
 }

 return error;
}
