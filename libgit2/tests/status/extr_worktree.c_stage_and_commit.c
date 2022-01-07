
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_index ;


 int cl_git_pass (int ) ;
 int cl_repo_commit_from_index (int *,int *,int *,int,char*) ;
 int git_index_add_bypath (int *,char const*) ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int *) ;

__attribute__((used)) static void stage_and_commit(git_repository *repo, const char *path)
{
 git_index *index;

 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_index_add_bypath(index, path));
 cl_repo_commit_from_index(((void*)0), repo, ((void*)0), 1323847743, "Initial commit\n");
 git_index_free(index);
}
