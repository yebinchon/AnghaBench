
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_valid_transform (char*,char*,char*) ;

void test_network_refspecs__transform_loosened_star(void)
{
 assert_valid_transform("refs/heads/branch-*:refs/remotes/origin/branch-*", "refs/heads/branch-a", "refs/remotes/origin/branch-a");
 assert_valid_transform("refs/heads/branch-*/head:refs/remotes/origin/branch-*/head", "refs/heads/branch-a/head", "refs/remotes/origin/branch-a/head");
}
