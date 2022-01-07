
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct commit {TYPE_2__* parents; } ;
struct TYPE_4__ {TYPE_1__* next; } ;
struct TYPE_3__ {int next; } ;



__attribute__((used)) static int is_common_merge(const struct commit *commit)
{
 return (commit->parents
  && commit->parents->next
  && !commit->parents->next->next);
}
