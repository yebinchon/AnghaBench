
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_checkout_fails (char*,char*) ;

void test_checkout_nasty__dotgit_path(void)
{
 test_checkout_fails("refs/heads/dotgit_path", ".git/foobar");
}
