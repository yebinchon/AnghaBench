
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ time; } ;
typedef TYPE_1__ git_commit_list_node ;



int git_commit_list_time_cmp(const void *a, const void *b)
{
 int64_t time_a = ((git_commit_list_node *) a)->time;
 int64_t time_b = ((git_commit_list_node *) b)->time;

 if (time_a < time_b)
  return 1;
 if (time_a > time_b)
  return -1;

 return 0;
}
