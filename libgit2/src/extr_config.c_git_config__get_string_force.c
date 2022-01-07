
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;


 int GET_NO_ERRORS ;
 int get_entry (TYPE_1__**,int const*,char const*,int,int ) ;
 char* git__strdup (char const*) ;
 int git_config_entry_free (TYPE_1__*) ;

char *git_config__get_string_force(
 const git_config *cfg, const char *key, const char *fallback_value)
{
 git_config_entry *entry;
 char *ret;

 get_entry(&entry, cfg, key, 0, GET_NO_ERRORS);
 ret = (entry && entry->value) ? git__strdup(entry->value) : fallback_value ? git__strdup(fallback_value) : ((void*)0);
 git_config_entry_free(entry);

 return ret;
}
