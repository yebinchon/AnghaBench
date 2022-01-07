
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_conflict (char*,char*,char*,char*) ;

void test_checkout_tree__checking_out_a_conflicting_content_change_returns_ECONFLICT(void)
{





 assert_conflict("branch_file.txt", "hello\n", "5b5b025", "c47800c");
}
