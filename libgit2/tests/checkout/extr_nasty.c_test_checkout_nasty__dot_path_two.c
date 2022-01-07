
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_checkout_fails (char*,char*) ;

void test_checkout_nasty__dot_path_two(void)
{
 test_checkout_fails("refs/heads/dot_path_two", "foo/.");
}
