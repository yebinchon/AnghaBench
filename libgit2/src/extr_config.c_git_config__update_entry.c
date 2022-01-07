
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;


 int git_config__lookup_entry (TYPE_1__**,int *,char const*,int) ;
 int git_config_delete_entry (int *,char const*) ;
 int git_config_entry_free (TYPE_1__*) ;
 int git_config_set_string (int *,char const*,char const*) ;
 int strcmp (scalar_t__,char const*) ;

int git_config__update_entry(
 git_config *config,
 const char *key,
 const char *value,
 bool overwrite_existing,
 bool only_if_existing)
{
 int error = 0;
 git_config_entry *ce = ((void*)0);

 if ((error = git_config__lookup_entry(&ce, config, key, 0)) < 0)
  return error;

 if (!ce && only_if_existing)
  return 0;
 if (ce && !overwrite_existing)
  return 0;
 if (value && ce && ce->value && !strcmp(ce->value, value))
  return 0;
 if (!value && (!ce || !ce->value))
  return 0;

 if (!value)
  error = git_config_delete_entry(config, key);
 else
  error = git_config_set_string(config, key, value);

 git_config_entry_free(ce);
 return error;
}
