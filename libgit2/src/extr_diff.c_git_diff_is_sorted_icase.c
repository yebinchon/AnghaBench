
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ opts; } ;
typedef TYPE_2__ git_diff ;


 int GIT_DIFF_IGNORE_CASE ;

int git_diff_is_sorted_icase(const git_diff *diff)
{
 return (diff->opts.flags & GIT_DIFF_IGNORE_CASE) != 0;
}
