
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;


 int GIT_REFS_STASH_FILE ;
 int git_reference_create (int **,int *,int ,int *,int,char const*) ;
 int git_reference_ensure_log (int *,int ) ;
 int git_reference_free (int *) ;

__attribute__((used)) static int update_reflog(
 git_oid *w_commit_oid,
 git_repository *repo,
 const char *message)
{
 git_reference *stash;
 int error;

 if ((error = git_reference_ensure_log(repo, GIT_REFS_STASH_FILE)) < 0)
  return error;

 error = git_reference_create(&stash, repo, GIT_REFS_STASH_FILE, w_commit_oid, 1, message);

 git_reference_free(stash);

 return error;
}
