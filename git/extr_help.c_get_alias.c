
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct TYPE_2__ {int util; } ;


 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 TYPE_1__* string_list_append (struct string_list*,char const*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static int get_alias(const char *var, const char *value, void *data)
{
 struct string_list *list = data;

 if (skip_prefix(var, "alias.", &var))
  string_list_append(list, var)->util = xstrdup(value);

 return 0;
}
