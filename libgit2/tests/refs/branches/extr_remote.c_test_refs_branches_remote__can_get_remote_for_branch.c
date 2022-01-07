
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptr; int member_0; } ;
typedef TYPE_1__ git_buf ;


 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_branch_remote_name (TYPE_1__*,int ,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int remote_tracking_branch_name ;

void test_refs_branches_remote__can_get_remote_for_branch(void)
{
 git_buf remotename = {0};

 cl_git_pass(git_branch_remote_name(&remotename, g_repo, remote_tracking_branch_name));

 cl_assert_equal_s("test", remotename.ptr);
 git_buf_dispose(&remotename);
}
