
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int oid; } ;
struct tree {TYPE_1__ object; } ;
struct rev_info {scalar_t__ edge_hint; } ;
struct oidset {int dummy; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_4__ {int flags; } ;
struct commit {TYPE_2__ object; struct commit_list* parents; } ;
typedef int (* show_edge_fn ) (struct commit*) ;


 int SHOWN ;
 int UNINTERESTING ;
 struct tree* get_commit_tree (struct commit*) ;
 int oidset_insert (struct oidset*,int *) ;

__attribute__((used)) static void add_edge_parents(struct commit *commit,
        struct rev_info *revs,
        show_edge_fn show_edge,
        struct oidset *set)
{
 struct commit_list *parents;

 for (parents = commit->parents; parents; parents = parents->next) {
  struct commit *parent = parents->item;
  struct tree *tree = get_commit_tree(parent);

  if (!tree)
   continue;

  oidset_insert(set, &tree->object.oid);

  if (!(parent->object.flags & UNINTERESTING))
   continue;
  tree->object.flags |= UNINTERESTING;

  if (revs->edge_hint && !(parent->object.flags & SHOWN)) {
   parent->object.flags |= SHOWN;
   show_edge(parent);
  }
 }
}
