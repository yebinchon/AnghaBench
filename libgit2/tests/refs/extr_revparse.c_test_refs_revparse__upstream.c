
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_invalid_single_spec (char*) ;
 int test_object (char*,char*) ;

void test_refs_revparse__upstream(void)
{
 assert_invalid_single_spec("e90810b@{u}");
 assert_invalid_single_spec("refs/tags/e90810b@{u}");
 test_object("refs/heads/e90810b@{u}", ((void*)0));

 test_object("master@{upstream}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
 test_object("@{u}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
 test_object("master@{u}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
 test_object("heads/master@{u}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
 test_object("refs/heads/master@{u}", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
}
