
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 scalar_t__ git__prefixcmp (char*,char*) ;

void test_core_string__0(void)
{
 cl_assert(git__prefixcmp("", "") == 0);
 cl_assert(git__prefixcmp("a", "") == 0);
 cl_assert(git__prefixcmp("", "a") < 0);
 cl_assert(git__prefixcmp("a", "b") < 0);
 cl_assert(git__prefixcmp("b", "a") > 0);
 cl_assert(git__prefixcmp("ab", "a") == 0);
 cl_assert(git__prefixcmp("ab", "ac") < 0);
 cl_assert(git__prefixcmp("ab", "aa") > 0);
}
