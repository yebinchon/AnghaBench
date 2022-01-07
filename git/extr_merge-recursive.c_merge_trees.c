
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct merge_options {int * ancestor; } ;


 int assert (int ) ;
 int merge_finalize (struct merge_options*) ;
 scalar_t__ merge_start (struct merge_options*,struct tree*) ;
 int merge_trees_internal (struct merge_options*,struct tree*,struct tree*,struct tree*,struct tree**) ;

int merge_trees(struct merge_options *opt,
  struct tree *head,
  struct tree *merge,
  struct tree *merge_base)
{
 int clean;
 struct tree *ignored;

 assert(opt->ancestor != ((void*)0));

 if (merge_start(opt, head))
  return -1;
 clean = merge_trees_internal(opt, head, merge, merge_base, &ignored);
 merge_finalize(opt);

 return clean;
}
