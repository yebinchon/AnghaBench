
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_blame__origin ;
struct TYPE_4__ {size_t s_lno; size_t num_lines; int suspect; scalar_t__ guilty; struct TYPE_4__* next; } ;
typedef TYPE_1__ git_blame__entry ;
struct TYPE_5__ {TYPE_1__* ent; } ;
typedef TYPE_2__ git_blame ;


 int same_suspect (int ,int *) ;

__attribute__((used)) static bool find_last_in_target(size_t *out, git_blame *blame, git_blame__origin *target)
{
 git_blame__entry *e;
 size_t last_in_target = 0;
 bool found = 0;

 *out = 0;

 for (e=blame->ent; e; e=e->next) {
  if (e->guilty || !same_suspect(e->suspect, target))
   continue;
  if (last_in_target < e->s_lno + e->num_lines) {
   found = 1;
   last_in_target = e->s_lno + e->num_lines;
  }
 }

 *out = last_in_target;
 return found;
}
