
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_conflict (char*,char*,char*,char*) ;

void test_checkout_tree__checking_out_a_conflicting_type_change_returns_ECONFLICT_2(void)
{





 assert_conflict("a", "hello\n", "a4a7dce", "cf80f8d");
}
