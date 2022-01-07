
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_tag (char*,int) ;

void test_refs_read__can_determine_if_a_reference_is_a_tag(void)
{
 assert_is_tag("refs/tags/e90810b", 1);
 assert_is_tag("refs/tags/test", 1);
 assert_is_tag("refs/heads/packed", 0);
 assert_is_tag("refs/remotes/test/master", 0);
}
