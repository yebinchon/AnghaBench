
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int assert (int) ;
 int remove_branch_config_related_entries (int *,char const*) ;
 int remove_remote_tracking (int *,char const*) ;
 int rename_remote_config_section (int *,char const*,int *) ;

int git_remote_delete(git_repository *repo, const char *name)
{
 int error;

 assert(repo && name);

 if ((error = remove_branch_config_related_entries(repo, name)) < 0 ||
     (error = remove_remote_tracking(repo, name)) < 0 ||
     (error = rename_remote_config_section(repo, name, ((void*)0))) < 0)
  return error;

 return 0;
}
