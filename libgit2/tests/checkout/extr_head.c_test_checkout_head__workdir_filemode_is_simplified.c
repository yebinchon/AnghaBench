
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_3__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_RESET_HARD ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,int *) ;
 int git_object_free (int *) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revparse_single (int **,int ,char*) ;
 int p_chmod (char*,int) ;

void test_checkout_head__workdir_filemode_is_simplified(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_object *target, *branch;

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_git_pass(git_revparse_single(&target, g_repo, "a38d028f71eaa590febb7d716b1ca32350cf70da"));
 cl_git_pass(git_reset(g_repo, target, GIT_RESET_HARD, ((void*)0)));

 cl_must_pass(p_chmod("testrepo/branch_file.txt", 0666));






 cl_git_pass(git_revparse_single(&branch, g_repo, "099fabac3a9ea935598528c27f866e34089c2eff"));

 opts.checkout_strategy &= ~GIT_CHECKOUT_FORCE;
 opts.checkout_strategy |= GIT_CHECKOUT_SAFE;
 cl_git_pass(git_checkout_tree(g_repo, branch, ((void*)0)));

 git_object_free(branch);
 git_object_free(target);
}
