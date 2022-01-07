
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;
typedef int git_index ;
typedef int git_diff_options ;
typedef int git_diff ;
typedef int git_config ;


 int GIT_DIFF_OPTIONS_INIT ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_config_set_string (int *,char*,char*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,int *) ;
 int git_index_add_bypath (int *,char*) ;
 int git_patch_free (int *) ;
 int git_patch_from_diff (int **,int *,int ) ;
 int git_repository_config__weakptr (int **,int ) ;
 int git_repository_index__weakptr (int **,int ) ;

void test_diff_drivers__invalid_pattern(void)
{
 git_config *cfg;
 git_index *idx;
 git_diff *diff;
 git_patch *patch;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;

 g_repo = cl_git_sandbox_init("userdiff");
 cl_git_mkfile("userdiff/.gitattributes", "*.storyboard diff=storyboard\n");

 cl_git_pass(git_repository_config__weakptr(&cfg, g_repo));
 cl_git_pass(git_config_set_string(cfg, "diff.storyboard.xfuncname", "<!--(.*?)-->"));

 cl_git_mkfile("userdiff/dummy.storyboard", "");
 cl_git_pass(git_repository_index__weakptr(&idx, g_repo));
 cl_git_pass(git_index_add_bypath(idx, "dummy.storyboard"));
 cl_git_mkfile("userdiff/dummy.storyboard", "some content\n");

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 cl_git_pass(git_patch_from_diff(&patch, diff, 0));

 git_patch_free(patch);
 git_diff_free(diff);
}
