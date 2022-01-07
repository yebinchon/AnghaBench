
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_invalid_single_spec (char*) ;
 int test_object (char*,char*) ;

void test_refs_revparse__ordinal(void)
{
 assert_invalid_single_spec("master@{-2}");





 test_object("nope@{0}", ((void*)0));
 test_object("master@{31415}", ((void*)0));
 test_object("@{1000}", ((void*)0));
 test_object("@{2}", ((void*)0));

 test_object("@{0}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 test_object("@{1}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");

 test_object("master@{0}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 test_object("master@{1}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
 test_object("heads/master@{1}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
 test_object("refs/heads/master@{1}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
}
