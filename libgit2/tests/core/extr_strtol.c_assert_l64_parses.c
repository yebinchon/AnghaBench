
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git__strntol64 (int *,char const*,int ,int *,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void assert_l64_parses(const char *string, int64_t expected, int base)
{
 int64_t i;
 cl_git_pass(git__strntol64(&i, string, strlen(string), ((void*)0), base));
 cl_assert_equal_i(i, expected);
}
