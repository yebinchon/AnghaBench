
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct update_data {int new_remote_name; int config; int old_remote_name; } ;
struct TYPE_3__ {int name; int value; } ;
typedef TYPE_1__ git_config_entry ;


 int git_config_set_string (int ,int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int update_config_entries_cb(
 const git_config_entry *entry,
 void *payload)
{
 struct update_data *data = (struct update_data *)payload;

 if (strcmp(entry->value, data->old_remote_name))
  return 0;

 return git_config_set_string(
  data->config, entry->name, data->new_remote_name);
}
