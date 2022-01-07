
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; char* template_path; int mode; } ;
typedef TYPE_1__ git_repository_init_options ;


 int GIT_FILEMODE_BLOB ;
 int GIT_FILEMODE_TREE ;
 int GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE ;
 int GIT_REPOSITORY_INIT_MKPATH ;
 TYPE_1__ GIT_REPOSITORY_INIT_OPTIONS_INIT ;
 int GIT_REPOSITORY_INIT_SHARED_GROUP ;
 int _repo ;
 int assert_mode_seems_okay (char const*,char*,int,int,int) ;
 int cl_repo_get_bool (int ,char*) ;
 char* git_repository_path (int ) ;
 int setup_repo (char*,TYPE_1__*) ;
 int setup_templates (char*,int) ;
 int validate_templates (int ,char*) ;

void test_repo_template__extended_with_template_and_shared_mode(void)
{
 git_repository_init_options opts = GIT_REPOSITORY_INIT_OPTIONS_INIT;
 const char *repo_path;
 int filemode;

 opts.flags = GIT_REPOSITORY_INIT_MKPATH |
  GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE;
 opts.template_path = "template";
 opts.mode = GIT_REPOSITORY_INIT_SHARED_GROUP;

 setup_templates("template", 0);
 setup_repo("init_shared_from_tpl", &opts);

 filemode = cl_repo_get_bool(_repo, "core.filemode");

 repo_path = git_repository_path(_repo);
 assert_mode_seems_okay(repo_path, "hooks",
  GIT_FILEMODE_TREE | GIT_REPOSITORY_INIT_SHARED_GROUP, 1, filemode);
 assert_mode_seems_okay(repo_path, "info",
  GIT_FILEMODE_TREE | GIT_REPOSITORY_INIT_SHARED_GROUP, 1, filemode);
 assert_mode_seems_okay(repo_path, "description",
  GIT_FILEMODE_BLOB, 0, filemode);

 validate_templates(_repo, "template");
}
