
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;


 int GIT_NOTES_DEFAULT_REF ;
 char* git_config__get_string_force (int *,char*,int ) ;
 int git_repository_config__weakptr (int **,int *) ;

__attribute__((used)) static int note_get_default_ref(char **out, git_repository *repo)
{
 git_config *cfg;
 int ret = git_repository_config__weakptr(&cfg, repo);

 *out = (ret != 0) ? ((void*)0) : git_config__get_string_force(
  cfg, "core.notesref", GIT_NOTES_DEFAULT_REF);

 return ret;
}
