
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _repo ;
 int assert_condition_includes (char*,char*,int) ;
 int set_head (int ,char*) ;

void test_config_conditionals__onbranch(void)
{
 assert_condition_includes("onbranch", "master", 1);
 assert_condition_includes("onbranch", "m*", 1);
 assert_condition_includes("onbranch", "*", 1);
 assert_condition_includes("onbranch", "master/", 0);
 assert_condition_includes("onbranch", "foo", 0);

 set_head(_repo, "foo");
 assert_condition_includes("onbranch", "master", 0);
 assert_condition_includes("onbranch", "foo", 1);
 assert_condition_includes("onbranch", "f*o", 1);

 set_head(_repo, "dir/ref");
 assert_condition_includes("onbranch", "dir/ref", 1);
 assert_condition_includes("onbranch", "dir/", 1);
 assert_condition_includes("onbranch", "dir/*", 1);
 assert_condition_includes("onbranch", "dir/**", 1);
 assert_condition_includes("onbranch", "**", 1);
 assert_condition_includes("onbranch", "dir", 0);
 assert_condition_includes("onbranch", "dir*", 0);

 set_head(_repo, "dir/subdir/ref");
 assert_condition_includes("onbranch", "dir/subdir/", 1);
 assert_condition_includes("onbranch", "dir/subdir/*", 1);
 assert_condition_includes("onbranch", "dir/subdir/ref", 1);
 assert_condition_includes("onbranch", "dir/", 1);
 assert_condition_includes("onbranch", "dir/**", 1);
 assert_condition_includes("onbranch", "**", 1);
 assert_condition_includes("onbranch", "dir", 0);
 assert_condition_includes("onbranch", "dir*", 0);
 assert_condition_includes("onbranch", "dir/*", 0);
}
