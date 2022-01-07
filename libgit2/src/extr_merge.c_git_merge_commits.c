
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_merge_options ;
typedef int git_index ;
typedef int git_commit ;
typedef int git_annotated_commit ;


 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_commit (int **,int *) ;
 int merge_annotated_commits (int **,int **,int *,int *,int *,int ,int const*) ;

int git_merge_commits(
 git_index **out,
 git_repository *repo,
 const git_commit *our_commit,
 const git_commit *their_commit,
 const git_merge_options *opts)
{
 git_annotated_commit *ours = ((void*)0), *theirs = ((void*)0), *base = ((void*)0);
 int error = 0;

 if ((error = git_annotated_commit_from_commit(&ours, (git_commit *)our_commit)) < 0 ||
  (error = git_annotated_commit_from_commit(&theirs, (git_commit *)their_commit)) < 0)
  goto done;

 error = merge_annotated_commits(out, &base, repo, ours, theirs, 0, opts);

done:
 git_annotated_commit_free(ours);
 git_annotated_commit_free(theirs);
 git_annotated_commit_free(base);
 return error;
}
