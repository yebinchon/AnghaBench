
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_objects_filter_options {scalar_t__ choice; } ;


 int _ (char*) ;
 int die (int ) ;

void list_objects_filter_die_if_populated(
 struct list_objects_filter_options *filter_options)
{
 if (filter_options->choice)
  die(_("multiple filter-specs cannot be combined"));
}
