
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_configmap ;
struct TYPE_4__ {int value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;


 int GET_ALL_ERRORS ;
 int get_entry (TYPE_1__**,int const*,char const*,int,int ) ;
 int git_config_entry_free (TYPE_1__*) ;
 int git_config_lookup_map_value (int*,int const*,size_t,int ) ;

int git_config_get_mapped(
 int *out,
 const git_config *cfg,
 const char *name,
 const git_configmap *maps,
 size_t map_n)
{
 git_config_entry *entry;
 int ret;

 if ((ret = get_entry(&entry, cfg, name, 1, GET_ALL_ERRORS)) < 0)
  return ret;

 ret = git_config_lookup_map_value(out, maps, map_n, entry->value);
 git_config_entry_free(entry);

 return ret;
}
