
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {int remote_cb; } ;
typedef TYPE_1__ git_clone_options ;


 TYPE_1__ GIT_CLONE_OPTIONS_INIT ;
 int GIT_EINVALIDSPEC ;
 int URL ;
 int cl_git_fail_with (int ,int ) ;
 int git_clone (int **,int ,char*,TYPE_1__*) ;
 int remote_single_branch ;

void test_online_remotes__restricted_refspecs(void)
{
 git_clone_options opts = GIT_CLONE_OPTIONS_INIT;
 git_repository *repo;

 opts.remote_cb = remote_single_branch;

 cl_git_fail_with(GIT_EINVALIDSPEC, git_clone(&repo, URL, "./restrict-refspec", &opts));
}
