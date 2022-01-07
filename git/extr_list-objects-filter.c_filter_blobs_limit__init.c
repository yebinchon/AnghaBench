
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_objects_filter_options {int blob_limit_value; } ;
struct filter_blobs_limit_data {int max_bytes; } ;
struct filter {int free_fn; int filter_object_fn; struct filter_blobs_limit_data* filter_data; } ;


 int filter_blobs_limit ;
 int free ;
 struct filter_blobs_limit_data* xcalloc (int,int) ;

__attribute__((used)) static void filter_blobs_limit__init(
 struct list_objects_filter_options *filter_options,
 struct filter *filter)
{
 struct filter_blobs_limit_data *d = xcalloc(1, sizeof(*d));
 d->max_bytes = filter_options->blob_limit_value;

 filter->filter_data = d;
 filter->filter_object_fn = filter_blobs_limit;
 filter->free_fn = free;
}
