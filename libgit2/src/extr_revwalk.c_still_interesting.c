
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {TYPE_1__* item; struct TYPE_5__* next; } ;
typedef TYPE_2__ git_commit_list ;
struct TYPE_4__ {scalar_t__ time; int uninteresting; } ;


 int SLOP ;

__attribute__((used)) static int still_interesting(git_commit_list *list, int64_t time, int slop)
{

 if (!list)
  return 0;





 if (time <= list->item->time)
  return SLOP;

 for (; list; list = list->next) {




  if (!list->item->uninteresting || list->item->time > time)
   return SLOP;
 }


 return slop - 1;
}
