
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_REPO_PATH ;
 int cl_git_sandbox_init (int ) ;
 int repo ;

void test_revert_bare__initialize(void)
{
 repo = cl_git_sandbox_init(TEST_REPO_PATH);
}
