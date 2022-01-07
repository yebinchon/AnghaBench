
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_annotated_commit ;


 int GIT_ENOTFOUND ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int *,int *) ;
 int git_error_clear () ;
 int merge_ancestor_head (int **,int *,int *,int const**,size_t) ;

__attribute__((used)) static int merge_heads(
 git_annotated_commit **ancestor_head_out,
 git_annotated_commit **our_head_out,
 git_repository *repo,
 git_reference *our_ref,
 const git_annotated_commit **their_heads,
 size_t their_heads_len)
{
 git_annotated_commit *ancestor_head = ((void*)0), *our_head = ((void*)0);
 int error = 0;

 *ancestor_head_out = ((void*)0);
 *our_head_out = ((void*)0);

 if ((error = git_annotated_commit_from_ref(&our_head, repo, our_ref)) < 0)
  goto done;

 if ((error = merge_ancestor_head(&ancestor_head, repo, our_head, their_heads, their_heads_len)) < 0) {
  if (error != GIT_ENOTFOUND)
   goto done;

  git_error_clear();
  error = 0;
 }

 *ancestor_head_out = ancestor_head;
 *our_head_out = our_head;

done:
 if (error < 0) {
  git_annotated_commit_free(ancestor_head);
  git_annotated_commit_free(our_head);
 }

 return error;
}
