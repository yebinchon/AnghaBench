
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 scalar_t__ git__suffixcmp (char*,char*) ;

void test_core_string__1(void)
{
 cl_assert(git__suffixcmp("", "") == 0);
 cl_assert(git__suffixcmp("a", "") == 0);
 cl_assert(git__suffixcmp("", "a") < 0);
 cl_assert(git__suffixcmp("a", "b") < 0);
 cl_assert(git__suffixcmp("b", "a") > 0);
 cl_assert(git__suffixcmp("ba", "a") == 0);
 cl_assert(git__suffixcmp("zaa", "ac") < 0);
 cl_assert(git__suffixcmp("zaz", "ac") > 0);
}
