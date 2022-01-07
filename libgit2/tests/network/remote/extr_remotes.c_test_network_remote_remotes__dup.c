
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char** strings; scalar_t__ count; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_remote ;


 int * _remote ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_remote_dup (int **,int *) ;
 int git_remote_free (int *) ;
 int git_remote_get_fetch_refspecs (TYPE_1__*,int *) ;
 int git_remote_get_push_refspecs (TYPE_1__*,int *) ;
 char* git_remote_name (int *) ;
 char* git_remote_pushurl (int *) ;
 char* git_remote_url (int *) ;
 int git_strarray_free (TYPE_1__*) ;

void test_network_remote_remotes__dup(void)
{
 git_strarray array;
 git_remote *dup;

 cl_git_pass(git_remote_dup(&dup, _remote));

 cl_assert_equal_s(git_remote_name(dup), git_remote_name(_remote));
 cl_assert_equal_s(git_remote_url(dup), git_remote_url(_remote));
 cl_assert_equal_s(git_remote_pushurl(dup), git_remote_pushurl(_remote));

 cl_git_pass(git_remote_get_fetch_refspecs(&array, _remote));
 cl_assert_equal_i(1, (int)array.count);
 cl_assert_equal_s("+refs/heads/*:refs/remotes/test/*", array.strings[0]);
 git_strarray_free(&array);

 cl_git_pass(git_remote_get_push_refspecs(&array, _remote));
 cl_assert_equal_i(0, (int)array.count);
 git_strarray_free(&array);

 git_remote_free(dup);
}
