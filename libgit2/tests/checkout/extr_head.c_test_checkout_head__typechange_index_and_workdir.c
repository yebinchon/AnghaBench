
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int git_object ;
typedef int git_index ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_PERMS_IS_EXEC (int ) ;
 int GIT_RESET_HARD ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int g_repo ;
 int git_checkout_head (int ,TYPE_1__*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_object_free (int *) ;
 int git_repository_index (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revparse_single (int **,int ,char*) ;
 int p_chmod (char*,int) ;
 int p_stat (char*,struct stat*) ;

void test_checkout_head__typechange_index_and_workdir(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_object *target;
 git_index *index;
 struct stat st;

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_git_pass(git_revparse_single(&target, g_repo, "HEAD"));
 cl_git_pass(git_reset(g_repo, target, GIT_RESET_HARD, ((void*)0)));

 cl_must_pass(p_chmod("testrepo/new.txt", 0755));
 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_add_bypath(index, "new.txt"));
 cl_git_pass(git_index_write(index));
 cl_git_pass(git_checkout_head(g_repo, &opts));

 cl_git_pass(p_stat("testrepo/new.txt", &st));
 cl_assert(!GIT_PERMS_IS_EXEC(st.st_mode));

 git_object_free(target);
 git_index_free(index);
}
