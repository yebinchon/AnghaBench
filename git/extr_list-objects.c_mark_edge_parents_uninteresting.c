
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {scalar_t__ edge_hint; int repo; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;
typedef int (* show_edge_fn ) (struct commit*) ;


 int SHOWN ;
 int UNINTERESTING ;
 int get_commit_tree (struct commit*) ;
 int mark_tree_uninteresting (int ,int ) ;

__attribute__((used)) static void mark_edge_parents_uninteresting(struct commit *commit,
         struct rev_info *revs,
         show_edge_fn show_edge)
{
 struct commit_list *parents;

 for (parents = commit->parents; parents; parents = parents->next) {
  struct commit *parent = parents->item;
  if (!(parent->object.flags & UNINTERESTING))
   continue;
  mark_tree_uninteresting(revs->repo, get_commit_tree(parent));
  if (revs->edge_hint && !(parent->object.flags & SHOWN)) {
   parent->object.flags |= SHOWN;
   show_edge(parent);
  }
 }
}
