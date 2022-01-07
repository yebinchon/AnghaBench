
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;
typedef int git_buf ;


 int GET_ALL_ERRORS ;
 int get_entry (TYPE_1__**,int const*,char const*,int,int ) ;
 int git_buf_puts (int *,char const*) ;
 int git_buf_sanitize (int *) ;
 int git_config_entry_free (TYPE_1__*) ;

int git_config_get_string_buf(
 git_buf *out, const git_config *cfg, const char *name)
{
 git_config_entry *entry;
 int ret;
 const char *str;

 git_buf_sanitize(out);

 ret = get_entry(&entry, cfg, name, 1, GET_ALL_ERRORS);
 str = !ret ? (entry->value ? entry->value : "") : ((void*)0);

 if (str)
  ret = git_buf_puts(out, str);

 git_config_entry_free(entry);

 return ret;
}
