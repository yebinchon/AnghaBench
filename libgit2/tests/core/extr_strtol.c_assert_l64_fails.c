
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int cl_git_fail (int ) ;
 int git__strntol64 (int *,char const*,int ,int *,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void assert_l64_fails(const char *string, int base)
{
 int64_t i;
 cl_git_fail(git__strntol64(&i, string, strlen(string), ((void*)0), base));
}
