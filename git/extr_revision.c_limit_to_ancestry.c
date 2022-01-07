
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 int TMP_MARK ;
 int UNINTERESTING ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 int free_commit_list (struct commit_list*) ;

__attribute__((used)) static void limit_to_ancestry(struct commit_list *bottom, struct commit_list *list)
{
 struct commit_list *p;
 struct commit_list *rlist = ((void*)0);
 int made_progress;





 for (p = list; p; p = p->next)
  commit_list_insert(p->item, &rlist);

 for (p = bottom; p; p = p->next)
  p->item->object.flags |= TMP_MARK;





 do {
  made_progress = 0;
  for (p = rlist; p; p = p->next) {
   struct commit *c = p->item;
   struct commit_list *parents;
   if (c->object.flags & (TMP_MARK | UNINTERESTING))
    continue;
   for (parents = c->parents;
        parents;
        parents = parents->next) {
    if (!(parents->item->object.flags & TMP_MARK))
     continue;
    c->object.flags |= TMP_MARK;
    made_progress = 1;
    break;
   }
  }
 } while (made_progress);
 for (p = list; p; p = p->next) {
  struct commit *c = p->item;
  if (c->object.flags & TMP_MARK)
   continue;
  c->object.flags |= UNINTERESTING;
 }


 for (p = list; p; p = p->next)
  p->item->object.flags &= ~TMP_MARK;
 for (p = bottom; p; p = p->next)
  p->item->object.flags &= ~TMP_MARK;
 free_commit_list(rlist);
}
