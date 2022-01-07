
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int certificate_check; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;


 int GIT_ECERTIFICATE ;
 int cl_git_fail_with (int ,int ) ;
 int fail_certificate_check ;
 TYPE_3__ g_options ;
 int g_repo ;
 int git_clone (int *,char*,char*,TYPE_3__*) ;

void test_online_clone__certificate_invalid(void)
{
 g_options.fetch_opts.callbacks.certificate_check = fail_certificate_check;

 cl_git_fail_with(git_clone(&g_repo, "https://github.com/libgit2/TestGitRepository", "./foo", &g_options),
  GIT_ECERTIFICATE);





}
