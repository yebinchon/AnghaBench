
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int st ;
struct TYPE_2__ {scalar_t__ klass; int message; } ;


 scalar_t__ GIT_ERROR_NOMEMORY ;
 int GIT_ERROR_OS ;
 int GIT_ERROR_REPOSITORY ;
 int GIT_UNUSED (struct stat) ;
 scalar_t__ GetProcessId (int *) ;
 int cl_assert (int) ;
 scalar_t__ git__prefixcmp (char*,char*) ;
 int git_error_clear () ;
 TYPE_1__* git_error_last () ;
 int git_error_set (int ,char*) ;
 int git_error_set_oom () ;
 int memset (struct stat*,int ,int) ;
 scalar_t__ p_lstat (char*,struct stat*) ;
 scalar_t__ strlen (char*) ;
 char* strstr (int ,char*) ;

void test_core_errors__new_school(void)
{
 char *str_in_error;

 git_error_clear();
 cl_assert(git_error_last() == ((void*)0));

 git_error_set_oom();

 cl_assert(git_error_last() != ((void*)0));
 cl_assert(git_error_last()->klass == GIT_ERROR_NOMEMORY);
 str_in_error = strstr(git_error_last()->message, "memory");
 cl_assert(str_in_error != ((void*)0));

 git_error_clear();

 git_error_set(GIT_ERROR_REPOSITORY, "This is a test");

 cl_assert(git_error_last() != ((void*)0));
 str_in_error = strstr(git_error_last()->message, "This is a test");
 cl_assert(str_in_error != ((void*)0));

 git_error_clear();
 cl_assert(git_error_last() == ((void*)0));

 do {
  struct stat st;
  memset(&st, 0, sizeof(st));
  cl_assert(p_lstat("this_file_does_not_exist", &st) < 0);
  GIT_UNUSED(st);
 } while (0);
 git_error_set(GIT_ERROR_OS, "stat failed");

 cl_assert(git_error_last() != ((void*)0));
 str_in_error = strstr(git_error_last()->message, "stat failed");
 cl_assert(str_in_error != ((void*)0));
 cl_assert(git__prefixcmp(str_in_error, "stat failed: ") == 0);
 cl_assert(strlen(str_in_error) > strlen("stat failed: "));
 git_error_clear();
}
