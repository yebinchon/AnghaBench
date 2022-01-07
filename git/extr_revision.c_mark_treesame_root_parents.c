
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 int TMP_MARK ;
 int TREESAME ;

__attribute__((used)) static int mark_treesame_root_parents(struct commit *commit)
{
 struct commit_list *p;
 int marked = 0;

 for (p = commit->parents; p; p = p->next) {
  struct commit *parent = p->item;
  if (!parent->parents && (parent->object.flags & TREESAME)) {
   parent->object.flags |= TMP_MARK;
   marked++;
  }
 }

 return marked;
}
