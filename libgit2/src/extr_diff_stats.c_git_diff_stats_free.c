
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* filestats; int diff; } ;
typedef TYPE_1__ git_diff_stats ;


 int git__free (TYPE_1__*) ;
 int git_diff_free (int ) ;

void git_diff_stats_free(git_diff_stats *stats)
{
 if (stats == ((void*)0))
  return;

 git_diff_free(stats->diff);
 git__free(stats->filestats);
 git__free(stats);
}
