
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct treesame_state {int * treesame; } ;
struct rev_info {int treesame; } ;
struct commit_list {int item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; int oid; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 int TREESAME ;
 int die (char*,int ) ;
 struct treesame_state* lookup_decoration (int *,TYPE_1__*) ;
 int oid_to_hex (int *) ;
 scalar_t__ relevant_commit (int ) ;

__attribute__((used)) static unsigned update_treesame(struct rev_info *revs, struct commit *commit)
{
 if (commit->parents && commit->parents->next) {
  unsigned n;
  struct treesame_state *st;
  struct commit_list *p;
  unsigned relevant_parents;
  unsigned relevant_change, irrelevant_change;

  st = lookup_decoration(&revs->treesame, &commit->object);
  if (!st)
   die("update_treesame %s", oid_to_hex(&commit->object.oid));
  relevant_parents = 0;
  relevant_change = irrelevant_change = 0;
  for (p = commit->parents, n = 0; p; n++, p = p->next) {
   if (relevant_commit(p->item)) {
    relevant_change |= !st->treesame[n];
    relevant_parents++;
   } else
    irrelevant_change |= !st->treesame[n];
  }
  if (relevant_parents ? relevant_change : irrelevant_change)
   commit->object.flags &= ~TREESAME;
  else
   commit->object.flags |= TREESAME;
 }

 return commit->object.flags & TREESAME;
}
