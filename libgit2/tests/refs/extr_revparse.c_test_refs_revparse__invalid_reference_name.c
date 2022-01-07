
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_invalid_single_spec (char*) ;

void test_refs_revparse__invalid_reference_name(void)
{
 assert_invalid_single_spec("this doesn't make sense");
 assert_invalid_single_spec("Inv@{id");
 assert_invalid_single_spec("");
}
