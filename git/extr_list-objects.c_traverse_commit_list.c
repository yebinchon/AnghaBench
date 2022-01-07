
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traversal_context {int * filter; void* show_data; int show_object; int show_commit; struct rev_info* revs; } ;
struct rev_info {int dummy; } ;
typedef int show_object_fn ;
typedef int show_commit_fn ;


 int do_traverse (struct traversal_context*) ;

void traverse_commit_list(struct rev_info *revs,
     show_commit_fn show_commit,
     show_object_fn show_object,
     void *show_data)
{
 struct traversal_context ctx;
 ctx.revs = revs;
 ctx.show_commit = show_commit;
 ctx.show_object = show_object;
 ctx.show_data = show_data;
 ctx.filter = ((void*)0);
 do_traverse(&ctx);
}
