
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_object ;
typedef int git_commit ;
typedef int git_annotated_commit ;


 int GIT_OBJECT_COMMIT ;
 int annotated_commit_init (int **,int *,char const*) ;
 int assert (int ) ;
 int git_object_free (int *) ;
 int git_object_peel (int **,int *,int ) ;
 int git_revparse_single (int **,int *,char const*) ;

int git_annotated_commit_from_revspec(
 git_annotated_commit **out,
 git_repository *repo,
 const char *revspec)
{
 git_object *obj, *commit;
 int error;

 assert(out && repo && revspec);

 if ((error = git_revparse_single(&obj, repo, revspec)) < 0)
  return error;

 if ((error = git_object_peel(&commit, obj, GIT_OBJECT_COMMIT))) {
  git_object_free(obj);
  return error;
 }

 error = annotated_commit_init(out, (git_commit *)commit, revspec);

 git_object_free(obj);
 git_object_free(commit);

 return error;
}
