
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int credentials; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;


 int cl_git_fail (int ) ;
 int clar__skip () ;
 int cred_foo_bar ;
 TYPE_3__ g_options ;
 int g_repo ;
 int git_clone (int *,char*,char*,TYPE_3__*) ;

void test_online_clone__ssh_cannot_change_username(void)
{

 clar__skip();

 g_options.fetch_opts.callbacks.credentials = cred_foo_bar;

 cl_git_fail(git_clone(&g_repo, "ssh://git@github.com/libgit2/TestGitRepository", "./foo", &g_options));
}
