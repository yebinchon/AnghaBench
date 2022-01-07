
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_config ;
struct TYPE_3__ {int checkout_strategy; } ;


 int GIT_CHECKOUT_NONE ;
 int GIT_CHECKOUT_OPTIONS_VERSION ;
 int GIT_OBJECT_ANY ;
 TYPE_1__ checkout_opts ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_skip () ;
 int git_checkout_options_init (TYPE_1__*,int ) ;
 int git_config_free (int *) ;
 int git_config_get_bool (int*,int *,char*) ;
 int git_object_lookup (int *,int ,int *,int ) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_repository_config_snapshot (int **,int ) ;
 int obj ;
 int repo ;

void test_checkout_icase__initialize(void)
{
 git_oid id;
 git_config *cfg;
 int icase = 0;

 repo = cl_git_sandbox_init("testrepo");

 cl_git_pass(git_repository_config_snapshot(&cfg, repo));
 git_config_get_bool(&icase, cfg, "core.ignorecase");
 git_config_free(cfg);

 if (!icase)
  cl_skip();

 cl_git_pass(git_reference_name_to_id(&id, repo, "refs/heads/dir"));
 cl_git_pass(git_object_lookup(&obj, repo, &id, GIT_OBJECT_ANY));

 git_checkout_options_init(&checkout_opts, GIT_CHECKOUT_OPTIONS_VERSION);
 checkout_opts.checkout_strategy = GIT_CHECKOUT_NONE;
}
