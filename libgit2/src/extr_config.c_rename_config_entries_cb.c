
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rename_data {int config; int name; scalar_t__ old_len; } ;
struct TYPE_3__ {scalar_t__ name; int value; } ;
typedef TYPE_1__ git_config_entry ;


 int git_buf_cstr (int ) ;
 size_t git_buf_len (int ) ;
 int git_buf_puts (int ,scalar_t__) ;
 int git_buf_truncate (int ,size_t) ;
 int git_config_delete_entry (int ,scalar_t__) ;
 int git_config_set_string (int ,int ,int ) ;

__attribute__((used)) static int rename_config_entries_cb(
 const git_config_entry *entry,
 void *payload)
{
 int error = 0;
 struct rename_data *data = (struct rename_data *)payload;
 size_t base_len = git_buf_len(data->name);

 if (base_len > 0 &&
  !(error = git_buf_puts(data->name, entry->name + data->old_len)))
 {
  error = git_config_set_string(
   data->config, git_buf_cstr(data->name), entry->value);

  git_buf_truncate(data->name, base_len);
 }

 if (!error)
  error = git_config_delete_entry(data->config, entry->name);

 return error;
}
