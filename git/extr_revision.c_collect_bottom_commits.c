
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int BOTTOM ;
 int commit_list_insert (TYPE_2__*,struct commit_list**) ;

__attribute__((used)) static struct commit_list *collect_bottom_commits(struct commit_list *list)
{
 struct commit_list *elem, *bottom = ((void*)0);
 for (elem = list; elem; elem = elem->next)
  if (elem->item->object.flags & BOTTOM)
   commit_list_insert(elem->item, &bottom);
 return bottom;
}
