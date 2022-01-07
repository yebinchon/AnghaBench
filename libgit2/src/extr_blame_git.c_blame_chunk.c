
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_blame__origin ;
struct TYPE_6__ {size_t s_lno; size_t num_lines; int suspect; scalar_t__ guilty; struct TYPE_6__* next; } ;
typedef TYPE_1__ git_blame__entry ;
struct TYPE_7__ {TYPE_1__* ent; } ;
typedef TYPE_2__ git_blame ;


 scalar_t__ blame_overlap (TYPE_2__*,TYPE_1__*,size_t,size_t,size_t,int *) ;
 int same_suspect (int ,int *) ;

__attribute__((used)) static int blame_chunk(
  git_blame *blame,
  size_t tlno,
  size_t plno,
  size_t same,
  git_blame__origin *target,
  git_blame__origin *parent)
{
 git_blame__entry *e;

 for (e = blame->ent; e; e = e->next) {
  if (e->guilty || !same_suspect(e->suspect, target))
   continue;
  if (same <= e->s_lno)
   continue;
  if (tlno < e->s_lno + e->num_lines) {
   if (blame_overlap(blame, e, tlno, plno, same, parent) < 0)
    return -1;
  }
 }

 return 0;
}
