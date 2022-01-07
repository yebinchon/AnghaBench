
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int _refspec ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_refspec_transform (TYPE_1__*,int ,char*) ;

void test_network_remote_remotes__transform(void)
{
 git_buf ref = GIT_BUF_INIT;

 cl_git_pass(git_refspec_transform(&ref, _refspec, "refs/heads/master"));
 cl_assert_equal_s(ref.ptr, "refs/remotes/test/master");
 git_buf_dispose(&ref);
}
