
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_data {char const* old_remote_name; char const* new_remote_name; int config; int * member_0; } ;
typedef int git_repository ;


 int git_config_foreach_match (int ,char*,int ,struct update_data*) ;
 int git_repository_config__weakptr (int *,int *) ;
 int update_config_entries_cb ;

__attribute__((used)) static int update_branch_remote_config_entry(
 git_repository *repo,
 const char *old_name,
 const char *new_name)
{
 int error;
 struct update_data data = { ((void*)0) };

 if ((error = git_repository_config__weakptr(&data.config, repo)) < 0)
  return error;

 data.old_remote_name = old_name;
 data.new_remote_name = new_name;

 return git_config_foreach_match(
  data.config, "branch\\..+\\.remote", update_config_entries_cb, &data);
}
