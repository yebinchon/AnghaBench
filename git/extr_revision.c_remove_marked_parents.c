
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int dummy; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 int TMP_MARK ;
 int TREESAME ;
 int compact_treesame (struct rev_info*,struct commit*,int) ;
 int free (struct commit_list*) ;
 int update_treesame (struct rev_info*,struct commit*) ;

__attribute__((used)) static int remove_marked_parents(struct rev_info *revs, struct commit *commit)
{
 struct commit_list **pp, *p;
 int nth_parent, removed = 0;

 pp = &commit->parents;
 nth_parent = 0;
 while ((p = *pp) != ((void*)0)) {
  struct commit *parent = p->item;
  if (parent->object.flags & TMP_MARK) {
   parent->object.flags &= ~TMP_MARK;
   *pp = p->next;
   free(p);
   removed++;
   compact_treesame(revs, commit, nth_parent);
   continue;
  }
  pp = &p->next;
  nth_parent++;
 }


 if (removed && !(commit->object.flags & TREESAME))
  update_treesame(revs, commit);

 return nth_parent;
}
