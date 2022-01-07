
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_repository_init_options ;


 int GIT_REPOSITORY_INIT_BARE ;
 int GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE ;
 int GIT_REPOSITORY_INIT_MKPATH ;
 TYPE_1__ GIT_REPOSITORY_INIT_OPTIONS_INIT ;
 int _repo ;
 int setup_repo (char*,TYPE_1__*) ;
 int setup_templates (char*,int) ;
 int validate_templates (int ,char*) ;

void test_repo_template__external_templates_with_leading_dot(void)
{
 git_repository_init_options opts = GIT_REPOSITORY_INIT_OPTIONS_INIT;

 opts.flags = GIT_REPOSITORY_INIT_MKPATH | GIT_REPOSITORY_INIT_BARE |
  GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE;

 setup_templates(".template_with_leading_dot", 1);
 setup_repo("templated.git", &opts);

 validate_templates(_repo, ".template_with_leading_dot");
}
