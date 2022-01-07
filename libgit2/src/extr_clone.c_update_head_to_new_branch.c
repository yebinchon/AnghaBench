
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;


 int GIT_EEXISTS ;
 int GIT_REFS_HEADS_DIR ;
 int create_tracking_branch (int **,int *,int const*,char const*,char const*) ;
 int git__prefixcmp (char const*,int ) ;
 int git_reference_free (int *) ;
 int git_reference_name (int *) ;
 int git_repository_set_head (int *,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int update_head_to_new_branch(
 git_repository *repo,
 const git_oid *target,
 const char *name,
 const char *reflog_message)
{
 git_reference *tracking_branch = ((void*)0);
 int error;

 if (!git__prefixcmp(name, GIT_REFS_HEADS_DIR))
  name += strlen(GIT_REFS_HEADS_DIR);

 error = create_tracking_branch(&tracking_branch, repo, target, name,
   reflog_message);

 if (!error)
  error = git_repository_set_head(
   repo, git_reference_name(tracking_branch));

 git_reference_free(tracking_branch);


 if (error == GIT_EEXISTS)
  error = 0;

 return error;
}
