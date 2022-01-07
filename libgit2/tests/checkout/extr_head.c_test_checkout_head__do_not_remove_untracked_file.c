
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_index ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_head (int ,TYPE_1__*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_path_isfile (char*) ;
 int git_repository_index (int **,int ) ;
 int p_mkdir (char*,int) ;

void test_checkout_head__do_not_remove_untracked_file(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_index *index;

 cl_git_pass(p_mkdir("testrepo/tracked", 0755));
 cl_git_mkfile("testrepo/tracked/tracked", "tracked\n");
 cl_git_mkfile("testrepo/tracked/untracked", "untracked\n");

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_add_bypath(index, "tracked/tracked"));
 cl_git_pass(git_index_write(index));

 git_index_free(index);

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;
 cl_git_pass(git_checkout_head(g_repo, &opts));

 cl_assert(!git_path_isfile("testrepo/tracked/tracked"));
 cl_assert(git_path_isfile("testrepo/tracked/untracked"));
}
