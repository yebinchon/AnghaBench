
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_conflict (char*,char*,char*,char*) ;

void test_checkout_tree__checking_out_a_conflicting_type_change_returns_ECONFLICT(void)
{





 assert_conflict("link_to_new.txt", "old.txt", "a65fedf", "099faba");
}
