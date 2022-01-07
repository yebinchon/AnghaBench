
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct treesame_state {unsigned int nparents; int* treesame; } ;
struct rev_info {int treesame; scalar_t__ dense; } ;
struct TYPE_5__ {int flags; } ;
struct commit {TYPE_2__ object; TYPE_1__* parents; } ;
struct TYPE_4__ {scalar_t__ next; } ;


 int TREESAME ;
 int add_decoration (int *,TYPE_2__*,int *) ;
 int die (char*,...) ;
 int free (int ) ;
 struct treesame_state* lookup_decoration (int *,TYPE_2__*) ;
 int memmove (int*,int*,unsigned int) ;
 scalar_t__ rev_same_tree_as_empty (struct rev_info*,struct commit*) ;

__attribute__((used)) static int compact_treesame(struct rev_info *revs, struct commit *commit, unsigned nth_parent)
{
 struct treesame_state *st;
 int old_same;

 if (!commit->parents) {




  if (nth_parent != 0)
   die("compact_treesame %u", nth_parent);
  old_same = !!(commit->object.flags & TREESAME);
  if (rev_same_tree_as_empty(revs, commit))
   commit->object.flags |= TREESAME;
  else
   commit->object.flags &= ~TREESAME;
  return old_same;
 }

 st = lookup_decoration(&revs->treesame, &commit->object);
 if (!st || nth_parent >= st->nparents)
  die("compact_treesame %u", nth_parent);

 old_same = st->treesame[nth_parent];
 memmove(st->treesame + nth_parent,
  st->treesame + nth_parent + 1,
  st->nparents - nth_parent - 1);






 if (--st->nparents == 1) {
  if (commit->parents->next)
   die("compact_treesame parents mismatch");
  if (st->treesame[0] && revs->dense)
   commit->object.flags |= TREESAME;
  else
   commit->object.flags &= ~TREESAME;
  free(add_decoration(&revs->treesame, &commit->object, ((void*)0)));
 }

 return old_same;
}
