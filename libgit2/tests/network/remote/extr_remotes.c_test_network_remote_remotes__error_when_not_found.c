
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_remote ;
struct TYPE_2__ {scalar_t__ klass; } ;


 int GIT_ENOTFOUND ;
 scalar_t__ GIT_ERROR_CONFIG ;
 int _repo ;
 int cl_assert (int) ;
 int cl_git_fail_with (int ,int ) ;
 TYPE_1__* git_error_last () ;
 int git_remote_lookup (int **,int ,char*) ;

void test_network_remote_remotes__error_when_not_found(void)
{
 git_remote *r;
 cl_git_fail_with(git_remote_lookup(&r, _repo, "does-not-exist"), GIT_ENOTFOUND);

 cl_assert(git_error_last() != ((void*)0));
 cl_assert(git_error_last()->klass == GIT_ERROR_CONFIG);
}
