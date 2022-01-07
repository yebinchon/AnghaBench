
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char** strings; int count; } ;
typedef TYPE_1__ git_strarray ;
struct TYPE_8__ {char* name; int repository; } ;
typedef TYPE_2__ git_remote_create_options ;
typedef int git_remote ;


 TYPE_2__ GIT_REMOTE_CREATE_OPTIONS_INIT ;
 char* TEST_URL ;
 int _repo ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_p (int ,int ) ;
 int cl_assert_equal_s (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_remote_create_with_opts (int **,char*,TYPE_2__*) ;
 int git_remote_free (int *) ;
 int git_remote_get_fetch_refspecs (TYPE_1__*,int *) ;
 char* git_remote_name (int *) ;
 int git_remote_owner (int *) ;
 char* git_remote_url (int *) ;
 int git_strarray_free (TYPE_1__*) ;

void test_remote_create__with_opts_named(void)
{
 git_remote *remote;
 git_strarray array;
 git_remote_create_options opts = GIT_REMOTE_CREATE_OPTIONS_INIT;

 opts.name = "test-new";
 opts.repository = _repo;

 cl_git_pass(git_remote_create_with_opts(&remote, TEST_URL, &opts));
 cl_assert_equal_s(git_remote_name(remote), "test-new");
 cl_assert_equal_s(git_remote_url(remote), TEST_URL);
 cl_assert_equal_p(git_remote_owner(remote), _repo);

 cl_git_pass(git_remote_get_fetch_refspecs(&array, remote));
 cl_assert_equal_i(1, array.count);
 cl_assert_equal_s("+refs/heads/*:refs/remotes/test-new/*", array.strings[0]);

 git_strarray_free(&array);
 git_remote_free(remote);
}
