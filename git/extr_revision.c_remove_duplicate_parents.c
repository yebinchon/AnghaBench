
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct treesame_state {int dummy; } ;
struct rev_info {int treesame; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 int TMP_MARK ;
 int compact_treesame (struct rev_info*,struct commit*,int) ;
 struct treesame_state* lookup_decoration (int *,TYPE_1__*) ;

__attribute__((used)) static int remove_duplicate_parents(struct rev_info *revs, struct commit *commit)
{
 struct treesame_state *ts = lookup_decoration(&revs->treesame, &commit->object);
 struct commit_list **pp, *p;
 int surviving_parents;


 pp = &commit->parents;
 surviving_parents = 0;
 while ((p = *pp) != ((void*)0)) {
  struct commit *parent = p->item;
  if (parent->object.flags & TMP_MARK) {
   *pp = p->next;
   if (ts)
    compact_treesame(revs, commit, surviving_parents);
   continue;
  }
  parent->object.flags |= TMP_MARK;
  surviving_parents++;
  pp = &p->next;
 }

 for (p = commit->parents; p; p = p->next) {
  p->item->object.flags &= ~TMP_MARK;
 }

 return surviving_parents;
}
