
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reference ;
typedef int git_merge_options ;
typedef int git_indexwriter ;
typedef int git_index ;
struct TYPE_6__ {unsigned int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;
typedef int git_annotated_commit ;


 unsigned int GIT_CHECKOUT_SAFE ;
 int GIT_ERROR_MERGE ;
 int GIT_INDEXWRITER_INIT ;
 int assert (int) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_head (int **,int *) ;
 int git_checkout_index (int *,int *,TYPE_1__*) ;
 int git_error_set (int ,char*) ;
 int git_index_free (int *) ;
 scalar_t__ git_index_read (int *,int ) ;
 int git_indexwriter_cleanup (int *) ;
 int git_indexwriter_commit (int *) ;
 int git_indexwriter_init_for_operation (int *,int *,unsigned int*) ;
 int git_merge__append_conflicts_to_merge_msg (int *,int *) ;
 int git_merge__check_result (int *,int *) ;
 int git_merge__setup (int *,int *,int const**,size_t) ;
 int git_reference_free (int *) ;
 int git_repository__ensure_not_bare (int *,char*) ;
 scalar_t__ git_repository_index (int **,int *) ;
 int merge_annotated_commits (int **,int **,int *,int *,int *,int ,int const*) ;
 int merge_normalize_checkout_opts (TYPE_1__*,int *,TYPE_1__ const*,unsigned int,int *,int *,int const**,size_t) ;
 int merge_state_cleanup (int *) ;

int git_merge(
 git_repository *repo,
 const git_annotated_commit **their_heads,
 size_t their_heads_len,
 const git_merge_options *merge_opts,
 const git_checkout_options *given_checkout_opts)
{
 git_reference *our_ref = ((void*)0);
 git_checkout_options checkout_opts;
 git_annotated_commit *our_head = ((void*)0), *base = ((void*)0);
 git_index *repo_index = ((void*)0), *index = ((void*)0);
 git_indexwriter indexwriter = GIT_INDEXWRITER_INIT;
 unsigned int checkout_strategy;
 int error = 0;

 assert(repo && their_heads && their_heads_len > 0);

 if (their_heads_len != 1) {
  git_error_set(GIT_ERROR_MERGE, "can only merge a single branch");
  return -1;
 }

 if ((error = git_repository__ensure_not_bare(repo, "merge")) < 0)
  goto done;

 checkout_strategy = given_checkout_opts ?
  given_checkout_opts->checkout_strategy :
  GIT_CHECKOUT_SAFE;

 if ((error = git_indexwriter_init_for_operation(&indexwriter, repo,
  &checkout_strategy)) < 0)
  goto done;

 if ((error = git_repository_index(&repo_index, repo) < 0) ||
     (error = git_index_read(repo_index, 0) < 0))
  goto done;


 if ((error = git_annotated_commit_from_head(&our_head, repo)) < 0 ||
  (error = git_merge__setup(repo, our_head, their_heads,
   their_heads_len)) < 0)
  goto done;



 if ((error = merge_annotated_commits(&index, &base, repo, our_head,
   (git_annotated_commit *)their_heads[0], 0, merge_opts)) < 0 ||
  (error = git_merge__check_result(repo, index)) < 0 ||
  (error = git_merge__append_conflicts_to_merge_msg(repo, index)) < 0)
  goto done;



 if ((error = merge_normalize_checkout_opts(&checkout_opts, repo,
   given_checkout_opts, checkout_strategy,
   base, our_head, their_heads, their_heads_len)) < 0 ||
  (error = git_checkout_index(repo, index, &checkout_opts)) < 0)
  goto done;

 error = git_indexwriter_commit(&indexwriter);

done:
 if (error < 0)
  merge_state_cleanup(repo);

 git_indexwriter_cleanup(&indexwriter);
 git_index_free(index);
 git_annotated_commit_free(our_head);
 git_annotated_commit_free(base);
 git_reference_free(our_ref);
 git_index_free(repo_index);

 return error;
}
