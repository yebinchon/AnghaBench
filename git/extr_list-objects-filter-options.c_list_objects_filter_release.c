
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_objects_filter_options {size_t sub_nr; struct list_objects_filter_options* sub; struct list_objects_filter_options* sparse_oid_name; int filter_spec; } ;


 int free (struct list_objects_filter_options*) ;
 int memset (struct list_objects_filter_options*,int ,int) ;
 int string_list_clear (int *,int ) ;

void list_objects_filter_release(
 struct list_objects_filter_options *filter_options)
{
 size_t sub;

 if (!filter_options)
  return;
 string_list_clear(&filter_options->filter_spec, 0);
 free(filter_options->sparse_oid_name);
 for (sub = 0; sub < filter_options->sub_nr; sub++)
  list_objects_filter_release(&filter_options->sub[sub]);
 free(filter_options->sub);
 memset(filter_options, 0, sizeof(*filter_options));
}
