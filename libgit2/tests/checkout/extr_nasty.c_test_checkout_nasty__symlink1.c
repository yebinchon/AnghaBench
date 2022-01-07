
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_checkout_passes (char*,char*) ;

void test_checkout_nasty__symlink1(void)
{
 test_checkout_passes("refs/heads/symlink1", ".git/foobar");
}
