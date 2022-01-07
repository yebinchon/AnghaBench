
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t count; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_remote ;


 int * TEST_URL ;
 int _repo ;
 int cl_assert_equal_i (size_t,size_t) ;
 int cl_assert_equal_p (int ,int ) ;
 int cl_assert_equal_s (int ,int *) ;
 int cl_git_pass (int ) ;
 size_t count_config_entries_match (int ,char*) ;
 int git_remote_create_anonymous (int **,int ,int *) ;
 int git_remote_free (int *) ;
 int git_remote_get_fetch_refspecs (TYPE_1__*,int *) ;
 int git_remote_name (int *) ;
 int git_remote_owner (int *) ;
 int git_remote_url (int *) ;
 int git_strarray_free (TYPE_1__*) ;

void test_remote_create__anonymous(void)
{
 git_remote *remote;
 git_strarray array;
 size_t section_count = count_config_entries_match(_repo, "remote\\.");

 cl_git_pass(git_remote_create_anonymous(&remote, _repo, TEST_URL));
 cl_assert_equal_s(git_remote_name(remote), ((void*)0));
 cl_assert_equal_s(git_remote_url(remote), TEST_URL);
 cl_assert_equal_p(git_remote_owner(remote), _repo);

 cl_git_pass(git_remote_get_fetch_refspecs(&array, remote));
 cl_assert_equal_i(0, array.count);
 cl_assert_equal_i(section_count, count_config_entries_match(_repo, "remote\\."));

 git_strarray_free(&array);
 git_remote_free(remote);
}
