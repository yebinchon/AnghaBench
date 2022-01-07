
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
typedef TYPE_1__ git_stash_apply_options ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 TYPE_1__ GIT_STASH_APPLY_OPTIONS_INIT ;
 int GIT_STASH_APPLY_REINSTATE_INDEX ;
 int GIT_STATUS_CURRENT ;
 int GIT_STATUS_INDEX_MODIFIED ;
 int GIT_STATUS_INDEX_NEW ;
 int GIT_STATUS_WT_MODIFIED ;
 int GIT_STATUS_WT_NEW ;
 int assert_status (int ,char*,int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_futils_readbuffer (TYPE_2__*,char*) ;
 int git_index_has_conflicts (int ) ;
 int git_stash_apply (int ,int ,TYPE_1__*) ;
 int repo ;
 int repo_index ;

void test_stash_apply__with_reinstate_index(void)
{
 git_buf where = GIT_BUF_INIT;
 git_stash_apply_options opts = GIT_STASH_APPLY_OPTIONS_INIT;

 opts.flags = GIT_STASH_APPLY_REINSTATE_INDEX;

 cl_git_pass(git_stash_apply(repo, 0, &opts));

 cl_assert_equal_i(git_index_has_conflicts(repo_index), 0);
 assert_status(repo, "what", GIT_STATUS_WT_MODIFIED);
 assert_status(repo, "how", GIT_STATUS_CURRENT);
 assert_status(repo, "who", GIT_STATUS_INDEX_MODIFIED);
 assert_status(repo, "when", GIT_STATUS_WT_NEW);
 assert_status(repo, "why", GIT_STATUS_INDEX_NEW);
 assert_status(repo, "where", GIT_STATUS_INDEX_NEW | GIT_STATUS_WT_MODIFIED);

 cl_git_pass(git_futils_readbuffer(&where, "stash/where"));
 cl_assert_equal_s("....\n", where.ptr);

 git_buf_dispose(&where);
}
