
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct data {int non_common_revs; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; int parsed; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 int COMMON ;
 int POPPED ;
 int SEEN ;

__attribute__((used)) static void mark_common(struct data *data, struct commit *c)
{
 struct commit_list *p;

 if (c->object.flags & COMMON)
  return;
 c->object.flags |= COMMON;
 if (!(c->object.flags & POPPED))
  data->non_common_revs--;

 if (!c->object.parsed)
  return;
 for (p = c->parents; p; p = p->next) {
  if (p->item->object.flags & SEEN)
   mark_common(data, p->item);
 }
}
