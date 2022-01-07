
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;


 int GET_ALL_ERRORS ;
 int get_entry (TYPE_1__**,int const*,char const*,int,int ) ;
 int git_config_entry_free (TYPE_1__*) ;
 int git_config_parse_int32 (int *,int ) ;

int git_config_get_int32(int32_t *out, const git_config *cfg, const char *name)
{
 git_config_entry *entry;
 int ret;

 if ((ret = get_entry(&entry, cfg, name, 1, GET_ALL_ERRORS)) < 0)
  return ret;

 ret = git_config_parse_int32(out, entry->value);
 git_config_entry_free(entry);

 return ret;
}
