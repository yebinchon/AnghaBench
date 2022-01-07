
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int string_list_append_nodup (struct string_list*,int ) ;
 int xstrfmt (char*,char const*,char const*) ;

__attribute__((used)) static inline void list_config_item(struct string_list *list,
        const char *prefix,
        const char *str)
{
 string_list_append_nodup(list, xstrfmt("%s.%s", prefix, str));
}
