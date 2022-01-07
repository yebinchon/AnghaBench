
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int started; int ended; int flags; scalar_t__ pathlist_walk_idx; scalar_t__ stat_calls; } ;
typedef TYPE_1__ git_iterator ;


 int GIT_ITERATOR_FIRST_ACCESS ;

__attribute__((used)) static void iterator_clear(git_iterator *iter)
{
 iter->started = 0;
 iter->ended = 0;
 iter->stat_calls = 0;
 iter->pathlist_walk_idx = 0;
 iter->flags &= ~GIT_ITERATOR_FIRST_ACCESS;
}
