
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int cl_git_fail (int ) ;
 int git__strntol32 (int *,char const*,int ,int *,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void assert_l32_fails(const char *string, int base)
{
 int32_t i;
 cl_git_fail(git__strntol32(&i, string, strlen(string), ((void*)0), base));
}
