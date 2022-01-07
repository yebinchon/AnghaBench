
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ klass; int message; } ;


 scalar_t__ GIT_ERROR_NOMEMORY ;
 int GIT_ERROR_REPOSITORY ;
 int cl_assert (int) ;
 int git_error_clear () ;
 TYPE_1__* git_error_last () ;
 int git_error_set_oom () ;
 int git_error_set_str (int ,char*) ;
 char* strstr (int ,char*) ;

void test_core_errors__public_api(void)
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

 git_error_set_str(GIT_ERROR_REPOSITORY, "This is a test");

 cl_assert(git_error_last() != ((void*)0));
 str_in_error = strstr(git_error_last()->message, "This is a test");
 cl_assert(str_in_error != ((void*)0));

 git_error_clear();
 cl_assert(git_error_last() == ((void*)0));
}
