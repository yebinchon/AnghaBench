
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;
typedef int git_checkout_options ;


 int GIT_CHECKOUT_OPTIONS_INIT ;
 int add_conflict (int *,char*) ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_index (int ,int *,int *) ;
 int git_index_free (int *) ;
 int * git_index_get_bypath (int *,char*,int) ;
 int git_index_new (int **) ;
 int git_repository_index (int **,int ) ;

void test_checkout_index__adding_conflict_removes_stage_0(void)
{
 git_index *new_index, *index;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 cl_git_pass(git_index_new(&new_index));

 add_conflict(new_index, "new.txt");
 cl_git_pass(git_checkout_index(g_repo, new_index, &opts));

 cl_git_pass(git_repository_index(&index, g_repo));

 cl_assert(git_index_get_bypath(index, "new.txt", 0) == ((void*)0));
 cl_assert(git_index_get_bypath(index, "new.txt", 1) != ((void*)0));
 cl_assert(git_index_get_bypath(index, "new.txt", 2) != ((void*)0));
 cl_assert(git_index_get_bypath(index, "new.txt", 3) != ((void*)0));

 git_index_free(index);
 git_index_free(new_index);
}
