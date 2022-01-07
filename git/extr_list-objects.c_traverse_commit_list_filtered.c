
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traversal_context {int filter; void* show_data; int show_commit; int show_object; struct rev_info* revs; } ;
struct rev_info {int dummy; } ;
struct oidset {int dummy; } ;
struct list_objects_filter_options {int dummy; } ;
typedef int show_object_fn ;
typedef int show_commit_fn ;


 int do_traverse (struct traversal_context*) ;
 int list_objects_filter__free (int ) ;
 int list_objects_filter__init (struct oidset*,struct list_objects_filter_options*) ;

void traverse_commit_list_filtered(
 struct list_objects_filter_options *filter_options,
 struct rev_info *revs,
 show_commit_fn show_commit,
 show_object_fn show_object,
 void *show_data,
 struct oidset *omitted)
{
 struct traversal_context ctx;

 ctx.revs = revs;
 ctx.show_object = show_object;
 ctx.show_commit = show_commit;
 ctx.show_data = show_data;
 ctx.filter = list_objects_filter__init(omitted, filter_options);
 do_traverse(&ctx);
 list_objects_filter__free(ctx.filter);
}
