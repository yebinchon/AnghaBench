
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_object ;
typedef int git_commit ;


 int cl_git_pass (int ) ;
 int git_commit_lookup (int **,int *,int ) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_revparse_single (int **,int *,char const*) ;

__attribute__((used)) static void retrieve_target_from_oid(git_commit **out, git_repository *repo, const char *sha)
{
 git_object *obj;

 cl_git_pass(git_revparse_single(&obj, repo, sha));
 cl_git_pass(git_commit_lookup(out, repo, git_object_id(obj)));
 git_object_free(obj);
}
