
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object ;
typedef int git_commit ;


 int GIT_EAMBIGUOUS ;
 int GIT_EINVALIDSPEC ;
 int GIT_ENOTFOUND ;
 int GIT_OBJECT_COMMIT ;
 int git_commit_parent (int **,int *,int) ;
 int git_object_free (int *) ;
 int git_object_peel (int **,int *,int ) ;

__attribute__((used)) static int handle_caret_parent_syntax(git_object **out, git_object *obj, int n)
{
 git_object *temp_commit = ((void*)0);
 int error;

 if ((error = git_object_peel(&temp_commit, obj, GIT_OBJECT_COMMIT)) < 0)
  return (error == GIT_EAMBIGUOUS || error == GIT_ENOTFOUND) ?
   GIT_EINVALIDSPEC : error;

 if (n == 0) {
  *out = temp_commit;
  return 0;
 }

 error = git_commit_parent((git_commit **)out, (git_commit*)temp_commit, n - 1);

 git_object_free(temp_commit);
 return error;
}
