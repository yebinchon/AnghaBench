
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_find (size_t*,int *,char const*) ;
 int git_index_free (int *) ;
 int git_index_remove (int *,char const*,int ) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;

__attribute__((used)) static void rm_submodule_from_index(const char *name)
{
 git_index *index;
 size_t pos;

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_assert(!git_index_find(&pos, index, name));
 cl_git_pass(git_index_remove(index, name, 0));
 cl_git_pass(git_index_write(index));
 git_index_free(index);
}
