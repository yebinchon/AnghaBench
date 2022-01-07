
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;
typedef int git_annotated_commit ;


 int GIT_OK ;
 int assert (int ) ;
 int git_annotated_commit_from_ref (int **,int *,int *) ;
 int git_annotated_commit_lookup (int **,int *,int ) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_reference_dwim (int **,int *,char const*) ;
 int git_reference_free (int *) ;
 int git_revparse_single (int **,int *,char const*) ;

int resolve_refish(git_annotated_commit **commit, git_repository *repo, const char *refish)
{
 git_reference *ref;
 git_object *obj;
 int err = 0;

 assert(commit != ((void*)0));

 err = git_reference_dwim(&ref, repo, refish);
 if (err == GIT_OK) {
  git_annotated_commit_from_ref(commit, repo, ref);
  git_reference_free(ref);
  return 0;
 }

 err = git_revparse_single(&obj, repo, refish);
 if (err == GIT_OK) {
  err = git_annotated_commit_lookup(commit, repo, git_object_id(obj));
  git_object_free(obj);
 }

 return err;
}
