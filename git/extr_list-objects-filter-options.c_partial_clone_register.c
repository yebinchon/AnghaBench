
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_objects_filter_options {int dummy; } ;


 char* expand_list_objects_filter_spec (struct list_objects_filter_options*) ;
 int free (char*) ;
 int git_config_set (char*,char*) ;
 int promisor_remote_find (char const*) ;
 int promisor_remote_reinit () ;
 char* xstrfmt (char*,char const*) ;

void partial_clone_register(
 const char *remote,
 struct list_objects_filter_options *filter_options)
{
 char *cfg_name;
 char *filter_name;


 if (!promisor_remote_find(remote)) {
  git_config_set("core.repositoryformatversion", "1");


  cfg_name = xstrfmt("remote.%s.promisor", remote);
  git_config_set(cfg_name, "true");
  free(cfg_name);
 }





 filter_name = xstrfmt("remote.%s.partialclonefilter", remote);

 git_config_set(filter_name,
         expand_list_objects_filter_spec(filter_options));
 free(filter_name);


 promisor_remote_reinit();
}
