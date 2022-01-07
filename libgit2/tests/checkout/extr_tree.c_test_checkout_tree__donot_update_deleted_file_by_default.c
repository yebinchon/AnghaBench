
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
typedef int git_index ;
typedef int git_commit ;
struct TYPE_6__ {TYPE_2__* notify_payload; int notify_cb; int notify_flags; int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;
typedef int ct ;
struct TYPE_7__ {int n_updates; int n_conflicts; } ;
typedef TYPE_2__ checkout_counts ;


 int GIT_CHECKOUT_NOTIFY_ALL ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_RESET_HARD ;
 int checkout_count_callback ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_index_free (int *) ;
 int git_index_remove_bypath (int *,char*) ;
 int git_index_write (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_path_exists (char*) ;
 int git_repository_index (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int p_unlink (char*) ;

void test_checkout_tree__donot_update_deleted_file_by_default(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_oid old_id, new_id;
 git_commit *old_commit = ((void*)0), *new_commit = ((void*)0);
 git_index *index = ((void*)0);
 checkout_counts ct;

 opts.checkout_strategy = GIT_CHECKOUT_SAFE;

 memset(&ct, 0, sizeof(ct));
 opts.notify_flags = GIT_CHECKOUT_NOTIFY_ALL;
 opts.notify_cb = checkout_count_callback;
 opts.notify_payload = &ct;

 cl_git_pass(git_repository_index(&index, g_repo));

 cl_git_pass(git_oid_fromstr(&old_id, "be3563ae3f795b2b4353bcce3a527ad0a4f7f644"));
 cl_git_pass(git_commit_lookup(&old_commit, g_repo, &old_id));
 cl_git_pass(git_reset(g_repo, (git_object *)old_commit, GIT_RESET_HARD, ((void*)0)));

 cl_git_pass(p_unlink("testrepo/branch_file.txt"));
 cl_git_pass(git_index_remove_bypath(index ,"branch_file.txt"));
 cl_git_pass(git_index_write(index));

 cl_assert(!git_path_exists("testrepo/branch_file.txt"));

 cl_git_pass(git_oid_fromstr(&new_id, "099fabac3a9ea935598528c27f866e34089c2eff"));
 cl_git_pass(git_commit_lookup(&new_commit, g_repo, &new_id));


 cl_git_fail(git_checkout_tree(g_repo, (git_object *)new_commit, &opts));

 cl_assert_equal_i(1, ct.n_conflicts);
 cl_assert_equal_i(1, ct.n_updates);

 git_commit_free(old_commit);
 git_commit_free(new_commit);
 git_index_free(index);
}
