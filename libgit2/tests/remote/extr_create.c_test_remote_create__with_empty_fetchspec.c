
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t count; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_remote ;


 int _repo ;
 int cl_assert_equal_i (size_t,size_t) ;
 int cl_git_pass (int ) ;
 size_t count_config_entries_match (int ,char*) ;
 int git_remote_create_with_fetchspec (int **,int ,char*,char*,int *) ;
 int git_remote_free (int *) ;
 int git_remote_get_fetch_refspecs (TYPE_1__*,int *) ;
 int git_strarray_free (TYPE_1__*) ;

void test_remote_create__with_empty_fetchspec(void)
{
 git_remote *remote;
 git_strarray array;
 size_t section_count = count_config_entries_match(_repo, "remote\\.");

 cl_git_pass(git_remote_create_with_fetchspec(&remote, _repo, "test-new", "git://github.com/libgit2/libgit2", ((void*)0)));
 cl_git_pass(git_remote_get_fetch_refspecs(&array, remote));
 cl_assert_equal_i(0, array.count);
 cl_assert_equal_i(section_count + 1, count_config_entries_match(_repo, "remote\\."));

 git_strarray_free(&array);
 git_remote_free(remote);
}
