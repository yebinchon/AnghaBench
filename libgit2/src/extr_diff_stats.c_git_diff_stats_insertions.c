
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t insertions; } ;
typedef TYPE_1__ git_diff_stats ;


 int assert (TYPE_1__ const*) ;

size_t git_diff_stats_insertions(
 const git_diff_stats *stats)
{
 assert(stats);

 return stats->insertions;
}
