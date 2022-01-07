
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int sorting; int limited; int * enqueue; int * get_next; scalar_t__ walking; } ;
typedef TYPE_1__ git_revwalk ;


 int GIT_SORT_NONE ;
 int GIT_SORT_TIME ;
 int assert (TYPE_1__*) ;
 int git_revwalk_reset (TYPE_1__*) ;
 int revwalk_enqueue_timesort ;
 int revwalk_enqueue_unsorted ;
 int revwalk_next_timesort ;
 int revwalk_next_unsorted ;

void git_revwalk_sorting(git_revwalk *walk, unsigned int sort_mode)
{
 assert(walk);

 if (walk->walking)
  git_revwalk_reset(walk);

 walk->sorting = sort_mode;

 if (walk->sorting & GIT_SORT_TIME) {
  walk->get_next = &revwalk_next_timesort;
  walk->enqueue = &revwalk_enqueue_timesort;
 } else {
  walk->get_next = &revwalk_next_unsorted;
  walk->enqueue = &revwalk_enqueue_unsorted;
 }

 if (walk->sorting != GIT_SORT_NONE)
  walk->limited = 1;
}
