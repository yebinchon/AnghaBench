
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* payload; int resolve_url; } ;
typedef TYPE_1__ git_remote_callbacks ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_DIRECTION_FETCH ;
 int GIT_DIRECTION_PUSH ;
 TYPE_1__ GIT_REMOTE_CALLBACKS_INIT ;
 int _remote ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_remote__urlfordirection (TYPE_2__*,int ,int ,TYPE_1__*) ;
 int git_remote_name (int ) ;
 int * git_remote_pushurl (int ) ;
 int git_remote_url (int ) ;
 int urlresolve_callback ;

void test_network_remote_remotes__urlresolve(void)
{
 git_buf url = GIT_BUF_INIT;

 git_remote_callbacks callbacks = GIT_REMOTE_CALLBACKS_INIT;
 callbacks.resolve_url = urlresolve_callback;
 callbacks.payload = "payload";

 cl_assert_equal_s(git_remote_name(_remote), "test");
 cl_assert_equal_s(git_remote_url(_remote), "git://github.com/libgit2/libgit2");
 cl_assert(git_remote_pushurl(_remote) == ((void*)0));

 cl_git_pass(git_remote__urlfordirection(&url, _remote, GIT_DIRECTION_FETCH, &callbacks));
 cl_assert_equal_s(url.ptr, "fetchresolve");

 cl_git_pass(git_remote__urlfordirection(&url, _remote, GIT_DIRECTION_PUSH, &callbacks));
 cl_assert_equal_s(url.ptr, "pushresolve");

 git_buf_dispose(&url);
}
