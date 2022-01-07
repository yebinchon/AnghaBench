
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit ;
typedef int git_annotated_commit ;


 int annotated_commit_init (int **,int *,char const*) ;
 int assert (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int *,int const*) ;

__attribute__((used)) static int annotated_commit_init_from_id(
 git_annotated_commit **out,
 git_repository *repo,
 const git_oid *id,
 const char *description)
{
 git_commit *commit = ((void*)0);
 int error = 0;

 assert(out && repo && id);

 *out = ((void*)0);

 if ((error = git_commit_lookup(&commit, repo, id)) < 0)
  goto done;

 error = annotated_commit_init(out, commit, description);

done:
 git_commit_free(commit);
 return error;
}
