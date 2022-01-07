
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int assert_condition_includes (char*,int ,int) ;
 int git_buf_dispose (int *) ;
 int sandbox_path (int *,char*) ;

void test_config_conditionals__gitdir_i(void)
{
 git_buf path = GIT_BUF_INIT;

 assert_condition_includes("gitdir/i", sandbox_path(&path, "empty_standard_repo/"), 1);
 assert_condition_includes("gitdir/i", sandbox_path(&path, "EMPTY_STANDARD_REPO/"), 1);

 git_buf_dispose(&path);
}
