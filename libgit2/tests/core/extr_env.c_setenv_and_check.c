
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int ) ;
 int cl_assert_equal_s (char const*,char*) ;
 char* cl_getenv (char const*) ;
 int cl_git_pass (int ) ;
 int cl_setenv (char const*,char const*) ;
 int git__free (char*) ;

__attribute__((used)) static void setenv_and_check(const char *name, const char *value)
{
 char *check;

 cl_git_pass(cl_setenv(name, value));
 check = cl_getenv(name);

 if (value)
  cl_assert_equal_s(value, check);
 else
  cl_assert(check == ((void*)0));

 git__free(check);
}
