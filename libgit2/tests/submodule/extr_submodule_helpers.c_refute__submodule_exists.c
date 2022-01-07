
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int clar__assert_equal (char const*,int,char const*,int,char*,int,int) ;
 scalar_t__ git_submodule_lookup (int *,int *,char const*) ;

void refute__submodule_exists(
 git_repository *repo, const char *name, int expected_error,
 const char *msg, const char *file, int line)
{
 clar__assert_equal(
  file, line, msg, 1, "%i",
  expected_error, (int)(git_submodule_lookup(((void*)0), repo, name)));
}
