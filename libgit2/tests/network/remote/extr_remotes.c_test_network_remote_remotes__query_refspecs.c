
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * strings; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_remote ;


 int _repo ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int * fetch_refspecs ;
 int git_remote_add_fetch (int ,char*,int ) ;
 int git_remote_add_push (int ,char*,int ) ;
 int git_remote_create_with_fetchspec (int **,int ,char*,char*,int *) ;
 int git_remote_delete (int ,char*) ;
 int git_remote_free (int *) ;
 int git_remote_get_fetch_refspecs (TYPE_1__*,int *) ;
 int git_remote_get_push_refspecs (TYPE_1__*,int *) ;
 int git_remote_lookup (int **,int ,char*) ;
 int git_strarray_free (TYPE_1__*) ;
 int * push_refspecs ;

void test_network_remote_remotes__query_refspecs(void)
{
 git_remote *remote;
 git_strarray array;
 int i;

 cl_git_pass(git_remote_create_with_fetchspec(&remote, _repo, "query", "git://github.com/libgit2/libgit2", ((void*)0)));
 git_remote_free(remote);

 for (i = 0; i < 3; i++) {
  cl_git_pass(git_remote_add_fetch(_repo, "query", fetch_refspecs[i]));
  cl_git_pass(git_remote_add_push(_repo, "query", push_refspecs[i]));
 }

 cl_git_pass(git_remote_lookup(&remote, _repo, "query"));

 cl_git_pass(git_remote_get_fetch_refspecs(&array, remote));
 for (i = 0; i < 3; i++) {
  cl_assert_equal_s(fetch_refspecs[i], array.strings[i]);
 }
 git_strarray_free(&array);

 cl_git_pass(git_remote_get_push_refspecs(&array, remote));
 for (i = 0; i < 3; i++) {
  cl_assert_equal_s(push_refspecs[i], array.strings[i]);
 }
 git_strarray_free(&array);

 git_remote_free(remote);
 git_remote_delete(_repo, "test");
}
