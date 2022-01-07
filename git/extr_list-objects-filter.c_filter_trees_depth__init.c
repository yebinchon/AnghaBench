
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_objects_filter_options {int tree_exclude_depth; } ;
struct filter_trees_depth_data {scalar_t__ current_depth; int exclude_depth; int seen_at_depth; } ;
struct filter {int free_fn; int filter_object_fn; struct filter_trees_depth_data* filter_data; } ;


 int filter_trees_depth ;
 int filter_trees_free ;
 int oidmap_init (int *,int ) ;
 struct filter_trees_depth_data* xcalloc (int,int) ;

__attribute__((used)) static void filter_trees_depth__init(
 struct list_objects_filter_options *filter_options,
 struct filter *filter)
{
 struct filter_trees_depth_data *d = xcalloc(1, sizeof(*d));
 oidmap_init(&d->seen_at_depth, 0);
 d->exclude_depth = filter_options->tree_exclude_depth;
 d->current_depth = 0;

 filter->filter_data = d;
 filter->filter_object_fn = filter_trees_depth;
 filter->free_fn = filter_trees_free;
}
