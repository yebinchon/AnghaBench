
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int cfg ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int ) ;
 int git_config_get_int32 (int *,int ,char*) ;
 int git_config_open_ondisk (int *,char*) ;
 int git_config_snapshot (int *,int ) ;
 int p_unlink (char*) ;
 int snapshot ;

void test_config_snapshot__create_snapshot(void)
{
 int32_t i;

 cl_git_mkfile("config", "[old]\nvalue = 5\n");
 cl_git_pass(git_config_open_ondisk(&cfg, "config"));
 cl_git_pass(git_config_get_int32(&i, cfg, "old.value"));
 cl_assert_equal_i(5, i);

 cl_git_pass(git_config_snapshot(&snapshot, cfg));


 cl_git_mkfile("config", "[old]\nvalue = 56\n");

 cl_git_pass(git_config_get_int32(&i, cfg, "old.value"));
 cl_assert_equal_i(56, i);
 cl_git_pass(git_config_get_int32(&i, snapshot, "old.value"));
 cl_assert_equal_i(5, i);


 cl_git_mkfile("config", "[old]\nvalue = 999\n");


 cl_git_pass(git_config_get_int32(&i, snapshot, "old.value"));
 cl_assert_equal_i(5, i);


 git_config_free(snapshot);
 cl_git_pass(git_config_snapshot(&snapshot, cfg));
 cl_git_pass(git_config_get_int32(&i, snapshot, "old.value"));
 cl_assert_equal_i(999, i);

 cl_git_pass(p_unlink("config"));
}
