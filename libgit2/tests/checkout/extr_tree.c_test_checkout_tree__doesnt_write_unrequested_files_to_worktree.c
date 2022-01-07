
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_NONE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_path_isfile (char*) ;

void test_checkout_tree__doesnt_write_unrequested_files_to_worktree(void)
{
 git_oid master_oid;
 git_oid chomped_oid;
 git_commit* p_master_commit;
 git_commit* p_chomped_commit;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 git_oid_fromstr(&master_oid, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 git_oid_fromstr(&chomped_oid, "e90810b8df3e80c413d903f631643c716887138d");
 cl_git_pass(git_commit_lookup(&p_master_commit, g_repo, &master_oid));
 cl_git_pass(git_commit_lookup(&p_chomped_commit, g_repo, &chomped_oid));




 opts.checkout_strategy = GIT_CHECKOUT_NONE;
 git_checkout_tree(g_repo, (git_object*)p_chomped_commit, &opts);
 cl_assert_equal_i(0, git_path_isfile("testrepo/readme.txt"));

 git_commit_free(p_master_commit);
 git_commit_free(p_chomped_commit);
}
