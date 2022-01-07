
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_valid_transform (char*,char*,char*) ;

void test_network_refspecs__transform_nested_star(void)
{
 assert_valid_transform("refs/heads/x*x/for-linus:refs/remotes/mine/*", "refs/heads/xbranchx/for-linus", "refs/remotes/mine/branch");
}
