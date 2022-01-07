
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rev_info {int linear; struct commit_list* previous_parents; scalar_t__ reverse; scalar_t__ track_first_time; } ;
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct TYPE_6__ {int flags; int oid; } ;
struct commit {int parents; TYPE_3__ object; } ;
struct TYPE_4__ {int oid; } ;
struct TYPE_5__ {TYPE_1__ object; } ;


 int TRACK_LINEAR ;
 struct commit_list* copy_commit_list (int ) ;
 int free_commit_list (struct commit_list*) ;
 scalar_t__ oideq (int *,int *) ;

__attribute__((used)) static void track_linear(struct rev_info *revs, struct commit *commit)
{
 if (revs->track_first_time) {
  revs->linear = 1;
  revs->track_first_time = 0;
 } else {
  struct commit_list *p;
  for (p = revs->previous_parents; p; p = p->next)
   if (p->item == ((void*)0) ||
       oideq(&p->item->object.oid, &commit->object.oid))
    break;
  revs->linear = p != ((void*)0);
 }
 if (revs->reverse) {
  if (revs->linear)
   commit->object.flags |= TRACK_LINEAR;
 }
 free_commit_list(revs->previous_parents);
 revs->previous_parents = copy_commit_list(commit->parents);
}
