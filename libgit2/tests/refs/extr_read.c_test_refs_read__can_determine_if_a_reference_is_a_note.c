
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_note (char*,int) ;

void test_refs_read__can_determine_if_a_reference_is_a_note(void)
{
 assert_is_note("refs/notes/fanout", 1);
 assert_is_note("refs/heads/packed", 0);
 assert_is_note("refs/remotes/test/master", 0);
}
