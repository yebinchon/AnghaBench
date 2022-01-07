
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_add_bypath (int *,char const*) ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int ) ;

__attribute__((used)) static void add_one_to_index(const char *file)
{
 git_index *index;
 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_add_bypath(index, file));
 git_index_free(index);
}
