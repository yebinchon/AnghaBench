
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_default_branch (char*) ;

void test_network_remote_defaultbranch__master(void)
{
 assert_default_branch("refs/heads/master");
}
