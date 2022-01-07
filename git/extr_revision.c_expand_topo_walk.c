
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct topo_walk_info {scalar_t__ min_generation; int topo_queue; int indegree; } ;
struct rev_info {scalar_t__ first_parent_only; int ignore_missing_links; struct topo_walk_info* topo_walk_info; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; int oid; } ;
struct commit {scalar_t__ generation; TYPE_1__ object; struct commit_list* parents; } ;


 int UNINTERESTING ;
 int compute_indegrees_to_depth (struct rev_info*,scalar_t__) ;
 int die (char*,int ) ;
 int* indegree_slab_at (int *,struct commit*) ;
 int oid_to_hex (int *) ;
 scalar_t__ parse_commit_gently (struct commit*,int) ;
 int prio_queue_put (int *,struct commit*) ;
 scalar_t__ process_parents (struct rev_info*,struct commit*,int *,int *) ;

__attribute__((used)) static void expand_topo_walk(struct rev_info *revs, struct commit *commit)
{
 struct commit_list *p;
 struct topo_walk_info *info = revs->topo_walk_info;
 if (process_parents(revs, commit, ((void*)0), ((void*)0)) < 0) {
  if (!revs->ignore_missing_links)
   die("Failed to traverse parents of commit %s",
       oid_to_hex(&commit->object.oid));
 }

 for (p = commit->parents; p; p = p->next) {
  struct commit *parent = p->item;
  int *pi;

  if (parent->object.flags & UNINTERESTING)
   continue;

  if (parse_commit_gently(parent, 1) < 0)
   continue;

  if (parent->generation < info->min_generation) {
   info->min_generation = parent->generation;
   compute_indegrees_to_depth(revs, info->min_generation);
  }

  pi = indegree_slab_at(&info->indegree, parent);

  (*pi)--;
  if (*pi == 1)
   prio_queue_put(&info->topo_queue, parent);

  if (revs->first_parent_only)
   return;
 }
}
