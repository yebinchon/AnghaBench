
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_objects_filter_options {int dummy; } ;
struct filter {int free_fn; int filter_object_fn; } ;


 int filter_blobs_none ;
 int free ;

__attribute__((used)) static void filter_blobs_none__init(
 struct list_objects_filter_options *filter_options,
 struct filter *filter)
{
 filter->filter_object_fn = filter_blobs_none;
 filter->free_fn = free;
}
