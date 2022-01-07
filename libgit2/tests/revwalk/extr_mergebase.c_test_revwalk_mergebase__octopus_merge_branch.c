
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_mergebase_octopus (char*,int,char*,char*,char*) ;

void test_revwalk_mergebase__octopus_merge_branch(void)
{
 assert_mergebase_octopus("8496071c1b46c854b31185ea97743be6a8774479", 3, "a65fed", "763d71", "849607");

 assert_mergebase_octopus("8496071c1b46c854b31185ea97743be6a8774479", 3, "a65fed", "763d71", "849607");
 assert_mergebase_octopus("8496071c1b46c854b31185ea97743be6a8774479", 3, "a65fed", "849607", "763d71");
 assert_mergebase_octopus("8496071c1b46c854b31185ea97743be6a8774479", 3, "849607", "a65fed", "763d71");
}
