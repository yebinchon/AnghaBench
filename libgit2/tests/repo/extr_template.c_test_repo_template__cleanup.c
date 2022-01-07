
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;


 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_OPT_SET_SEARCH_PATH ;
 TYPE_1__ _global_path ;
 int * _repo ;
 int cl_fixture_cleanup (char*) ;
 char* fixture_repo ;
 char* fixture_templates ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_libgit2_opts (int ,int ,int ) ;
 int git_repository_free (int *) ;

void test_repo_template__cleanup(void)
{
 git_libgit2_opts(GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL,
  _global_path.ptr);
 git_buf_dispose(&_global_path);

 cl_fixture_cleanup("tmp_global_path");

 if (fixture_repo) {
  cl_fixture_cleanup(fixture_repo);
  fixture_repo = ((void*)0);
 }

 if (fixture_templates) {
  cl_fixture_cleanup(fixture_templates);
  fixture_templates = ((void*)0);
 }

 git_repository_free(_repo);
 _repo = ((void*)0);
}
