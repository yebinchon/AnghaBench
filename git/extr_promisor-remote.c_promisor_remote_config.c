
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct promisor_remote {int partial_clone_filter; } ;


 int core_partial_clone_filter_default ;
 int free (char*) ;
 int git_config_bool (char const*,char const*) ;
 int git_config_string (int *,char const*,char const*) ;
 scalar_t__ parse_config_key (char const*,char*,char const**,int*,char const**) ;
 struct promisor_remote* promisor_remote_lookup (char*,int *) ;
 struct promisor_remote* promisor_remote_new (char*) ;
 int strcmp (char const*,char*) ;
 char* xmemdupz (char const*,int) ;

__attribute__((used)) static int promisor_remote_config(const char *var, const char *value, void *data)
{
 const char *name;
 int namelen;
 const char *subkey;

 if (!strcmp(var, "core.partialclonefilter"))
  return git_config_string(&core_partial_clone_filter_default,
      var, value);

 if (parse_config_key(var, "remote", &name, &namelen, &subkey) < 0)
  return 0;

 if (!strcmp(subkey, "promisor")) {
  char *remote_name;

  if (!git_config_bool(var, value))
   return 0;

  remote_name = xmemdupz(name, namelen);

  if (!promisor_remote_lookup(remote_name, ((void*)0)))
   promisor_remote_new(remote_name);

  free(remote_name);
  return 0;
 }
 if (!strcmp(subkey, "partialclonefilter")) {
  struct promisor_remote *r;
  char *remote_name = xmemdupz(name, namelen);

  r = promisor_remote_lookup(remote_name, ((void*)0));
  if (!r)
   r = promisor_remote_new(remote_name);

  free(remote_name);

  if (!r)
   return 0;

  return git_config_string(&r->partial_clone_filter, var, value);
 }

 return 0;
}
