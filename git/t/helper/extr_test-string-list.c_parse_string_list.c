
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int strcmp (char const*,char*) ;
 int string_list_split (struct string_list*,char const*,char,int) ;

__attribute__((used)) static void parse_string_list(struct string_list *list, const char *arg)
{
 if (!strcmp(arg, "-"))
  return;

 (void)string_list_split(list, arg, ':', -1);
}
