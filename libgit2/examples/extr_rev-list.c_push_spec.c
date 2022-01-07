
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk ;
typedef int git_repository ;
typedef int git_object ;


 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_revparse_single (int **,int *,char const*) ;
 int push_commit (int *,int ,int) ;

__attribute__((used)) static int push_spec(git_repository *repo, git_revwalk *walk, const char *spec, int hide)
{
 int error;
 git_object *obj;

 if ((error = git_revparse_single(&obj, repo, spec)) < 0)
  return error;

 error = push_commit(walk, git_object_id(obj), hide);
 git_object_free(obj);
 return error;
}
