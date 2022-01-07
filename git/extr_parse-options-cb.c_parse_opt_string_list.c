
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct option {struct string_list* value; } ;


 int string_list_append (struct string_list*,char const*) ;
 int string_list_clear (struct string_list*,int ) ;

int parse_opt_string_list(const struct option *opt, const char *arg, int unset)
{
 struct string_list *v = opt->value;

 if (unset) {
  string_list_clear(v, 0);
  return 0;
 }

 if (!arg)
  return -1;

 string_list_append(v, arg);
 return 0;
}
