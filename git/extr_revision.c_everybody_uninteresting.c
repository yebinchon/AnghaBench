
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int UNINTERESTING ;

__attribute__((used)) static int everybody_uninteresting(struct commit_list *orig,
       struct commit **interesting_cache)
{
 struct commit_list *list = orig;

 if (*interesting_cache) {
  struct commit *commit = *interesting_cache;
  if (!(commit->object.flags & UNINTERESTING))
   return 0;
 }

 while (list) {
  struct commit *commit = list->item;
  list = list->next;
  if (commit->object.flags & UNINTERESTING)
   continue;

  *interesting_cache = commit;
  return 0;
 }
 return 1;
}
