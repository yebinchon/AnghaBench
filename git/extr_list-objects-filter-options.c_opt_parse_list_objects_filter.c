
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct list_objects_filter_options* value; } ;
struct list_objects_filter_options {int dummy; } ;


 int list_objects_filter_set_no_filter (struct list_objects_filter_options*) ;
 int parse_list_objects_filter (struct list_objects_filter_options*,char const*) ;

int opt_parse_list_objects_filter(const struct option *opt,
      const char *arg, int unset)
{
 struct list_objects_filter_options *filter_options = opt->value;

 if (unset || !arg)
  list_objects_filter_set_no_filter(filter_options);
 else
  parse_list_objects_filter(filter_options, arg);
 return 0;
}
