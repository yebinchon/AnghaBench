
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct map_data {int default_value; int map_count; scalar_t__ maps; int name; } ;
typedef scalar_t__ git_configmap_item ;
struct TYPE_4__ {int value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;


 struct map_data* _configmaps ;
 int git_config__lookup_entry (TYPE_1__**,int *,int ,int) ;
 int git_config_entry_free (TYPE_1__*) ;
 int git_config_lookup_map_value (int*,scalar_t__,int ,int ) ;
 int git_config_parse_bool (int*,int ) ;

int git_config__configmap_lookup(int *out, git_config *config, git_configmap_item item)
{
 int error = 0;
 struct map_data *data = &_configmaps[(int)item];
 git_config_entry *entry;

 if ((error = git_config__lookup_entry(&entry, config, data->name, 0)) < 0)
  return error;

 if (!entry)
  *out = data->default_value;
 else if (data->maps)
  error = git_config_lookup_map_value(
   out, data->maps, data->map_count, entry->value);
 else
  error = git_config_parse_bool(out, entry->value);

 git_config_entry_free(entry);
 return error;
}
