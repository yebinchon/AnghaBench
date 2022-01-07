
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int certificate_check; } ;
struct TYPE_7__ {TYPE_1__ callbacks; } ;
struct TYPE_8__ {TYPE_2__ fetch_opts; } ;
typedef TYPE_3__ git_clone_options ;


 TYPE_3__ GIT_CLONE_OPTIONS_INIT ;
 int GIT_ECERTIFICATE ;
 int cert_check_assert_invalid ;
 int cl_git_fail_with (int ,int ) ;
 int cl_skip () ;
 int g_has_ssl ;
 int g_repo ;
 int git_clone (int *,char*,char*,TYPE_3__*) ;

void test_online_badssl__expired(void)
{
 git_clone_options opts = GIT_CLONE_OPTIONS_INIT;
 opts.fetch_opts.callbacks.certificate_check = cert_check_assert_invalid;

 if (!g_has_ssl)
  cl_skip();

 cl_git_fail_with(GIT_ECERTIFICATE,
    git_clone(&g_repo, "https://expired.badssl.com/fake.git", "./fake", ((void*)0)));

 cl_git_fail_with(GIT_ECERTIFICATE,
    git_clone(&g_repo, "https://expired.badssl.com/fake.git", "./fake", &opts));
}
