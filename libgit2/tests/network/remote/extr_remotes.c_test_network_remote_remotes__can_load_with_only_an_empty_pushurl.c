
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * pushurl; int * url; } ;
typedef TYPE_1__ git_remote ;


 int GIT_DIRECTION_FETCH ;
 int _repo ;
 int cl_assert (int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_remote_connect (TYPE_1__*,int ,int *,int *,int *) ;
 int git_remote_free (TYPE_1__*) ;
 int git_remote_lookup (TYPE_1__**,int ,char*) ;

void test_network_remote_remotes__can_load_with_only_an_empty_pushurl(void)
{
 git_remote *remote = ((void*)0);

 cl_git_pass(git_remote_lookup(&remote, _repo, "empty-remote-pushurl"));

 cl_assert(remote->url == ((void*)0));
 cl_assert(remote->pushurl == ((void*)0));

 cl_git_fail(git_remote_connect(remote, GIT_DIRECTION_FETCH, ((void*)0), ((void*)0), ((void*)0)));

 git_remote_free(remote);
}
