
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int push; } ;


 int GIT_EINVALIDSPEC ;
 TYPE_1__* _refspec ;
 int _remote ;
 int _repo ;
 int cl_assert_equal_b (int ,int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_refspec_dst (TYPE_1__*) ;
 int git_refspec_src (TYPE_1__*) ;
 int git_refspec_string (TYPE_1__*) ;
 int git_remote_add_fetch (int ,char*,char*) ;
 int git_remote_free (int ) ;
 TYPE_1__* git_remote_get_refspec (int ,size_t) ;
 int git_remote_lookup (int *,int ,char*) ;
 size_t git_remote_refspec_count (int ) ;

void test_network_remote_remotes__add_fetchspec(void)
{
 size_t size;

 size = git_remote_refspec_count(_remote);

 cl_git_pass(git_remote_add_fetch(_repo, "test", "refs/*:refs/*"));
 size++;

 git_remote_free(_remote);
 cl_git_pass(git_remote_lookup(&_remote, _repo, "test"));

 cl_assert_equal_i((int)size, (int)git_remote_refspec_count(_remote));

 _refspec = git_remote_get_refspec(_remote, size - 1);
 cl_assert_equal_s(git_refspec_src(_refspec), "refs/*");
 cl_assert_equal_s(git_refspec_dst(_refspec), "refs/*");
 cl_assert_equal_s(git_refspec_string(_refspec), "refs/*:refs/*");
 cl_assert_equal_b(_refspec->push, 0);

 cl_git_fail_with(GIT_EINVALIDSPEC, git_remote_add_fetch(_repo, "test", "refs/*/foo/*:refs/*"));
}
