
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_objects_filter_options {int no_filter; } ;


 int list_objects_filter_release (struct list_objects_filter_options*) ;

__attribute__((used)) static inline void list_objects_filter_set_no_filter(
 struct list_objects_filter_options *filter_options)
{
 list_objects_filter_release(filter_options);
 filter_options->no_filter = 1;
}
