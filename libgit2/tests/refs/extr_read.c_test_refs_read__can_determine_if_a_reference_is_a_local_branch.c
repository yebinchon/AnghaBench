
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_branch (char*,int) ;

void test_refs_read__can_determine_if_a_reference_is_a_local_branch(void)
{
 assert_is_branch("refs/heads/master", 1);
 assert_is_branch("refs/heads/packed", 1);
 assert_is_branch("refs/remotes/test/master", 0);
 assert_is_branch("refs/tags/e90810b", 0);
}
