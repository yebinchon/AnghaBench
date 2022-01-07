
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 scalar_t__ git__prefixncmp (char*,int,char*) ;

void test_core_string__prefixncmp(void)
{
 cl_assert(git__prefixncmp("", 0, "") == 0);
 cl_assert(git__prefixncmp("a", 1, "") == 0);
 cl_assert(git__prefixncmp("", 0, "a") < 0);
 cl_assert(git__prefixncmp("a", 1, "b") < 0);
 cl_assert(git__prefixncmp("b", 1, "a") > 0);
 cl_assert(git__prefixncmp("ab", 2, "a") == 0);
 cl_assert(git__prefixncmp("ab", 1, "a") == 0);
 cl_assert(git__prefixncmp("ab", 2, "ac") < 0);
 cl_assert(git__prefixncmp("a", 1, "ac") < 0);
 cl_assert(git__prefixncmp("ab", 1, "ac") < 0);
 cl_assert(git__prefixncmp("ab", 2, "aa") > 0);
 cl_assert(git__prefixncmp("ab", 1, "aa") < 0);
}
