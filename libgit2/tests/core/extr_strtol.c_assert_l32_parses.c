
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git__strntol32 (int *,char const*,int ,int *,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void assert_l32_parses(const char *string, int32_t expected, int base)
{
 int32_t i;
 cl_git_pass(git__strntol32(&i, string, strlen(string), ((void*)0), base));
 cl_assert_equal_i(i, expected);
}
