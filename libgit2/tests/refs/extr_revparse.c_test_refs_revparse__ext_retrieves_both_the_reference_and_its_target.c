
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_object_and_ref (char*,char*,char*) ;

void test_refs_revparse__ext_retrieves_both_the_reference_and_its_target(void)
{
 test_object_and_ref(
  "master@{upstream}",
  "be3563ae3f795b2b4353bcce3a527ad0a4f7f644",
  "refs/remotes/test/master");

 test_object_and_ref(
  "@{-1}",
  "a4a7dce85cf63874e984719f4fdd239f5145052f",
  "refs/heads/br2");
}
