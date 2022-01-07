
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;


 int GET_NO_ERRORS ;
 int get_entry (TYPE_1__**,int const*,char const*,int,int ) ;
 int git_config_entry_free (TYPE_1__*) ;
 scalar_t__ git_config_parse_bool (int*,int ) ;
 int git_error_clear () ;

int git_config__get_bool_force(
 const git_config *cfg, const char *key, int fallback_value)
{
 int val = fallback_value;
 git_config_entry *entry;

 get_entry(&entry, cfg, key, 0, GET_NO_ERRORS);

 if (entry && git_config_parse_bool(&val, entry->value) < 0)
  git_error_clear();

 git_config_entry_free(entry);
 return val;
}
