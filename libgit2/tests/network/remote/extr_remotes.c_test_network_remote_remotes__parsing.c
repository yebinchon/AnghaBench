
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_remote ;
struct TYPE_5__ {int * ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_DIRECTION_FETCH ;
 int GIT_DIRECTION_PUSH ;
 int * _remote ;
 int _repo ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (int *,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_remote__urlfordirection (TYPE_1__*,int *,int ,int *) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int ,char*) ;
 int * git_remote_name (int *) ;
 int * git_remote_pushurl (int *) ;
 int * git_remote_url (int *) ;

void test_network_remote_remotes__parsing(void)
{
 git_buf url = GIT_BUF_INIT;
 git_remote *_remote2 = ((void*)0);

 cl_assert_equal_s(git_remote_name(_remote), "test");
 cl_assert_equal_s(git_remote_url(_remote), "git://github.com/libgit2/libgit2");
 cl_assert(git_remote_pushurl(_remote) == ((void*)0));

 cl_git_pass(git_remote__urlfordirection(&url, _remote, GIT_DIRECTION_FETCH, ((void*)0)));
 cl_assert_equal_s(url.ptr, "git://github.com/libgit2/libgit2");

 cl_git_pass(git_remote__urlfordirection(&url, _remote, GIT_DIRECTION_PUSH, ((void*)0)));
 cl_assert_equal_s(url.ptr, "git://github.com/libgit2/libgit2");

 cl_git_pass(git_remote_lookup(&_remote2, _repo, "test_with_pushurl"));
 cl_assert_equal_s(git_remote_name(_remote2), "test_with_pushurl");
 cl_assert_equal_s(git_remote_url(_remote2), "git://github.com/libgit2/fetchlibgit2");
 cl_assert_equal_s(git_remote_pushurl(_remote2), "git://github.com/libgit2/pushlibgit2");

 cl_git_pass(git_remote__urlfordirection(&url, _remote2, GIT_DIRECTION_FETCH, ((void*)0)));
 cl_assert_equal_s(url.ptr, "git://github.com/libgit2/fetchlibgit2");

 cl_git_pass(git_remote__urlfordirection(&url, _remote2, GIT_DIRECTION_PUSH, ((void*)0)));
 cl_assert_equal_s(url.ptr, "git://github.com/libgit2/pushlibgit2");

 git_remote_free(_remote2);
 git_buf_dispose(&url);
}
