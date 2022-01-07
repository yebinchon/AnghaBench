
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lno; struct TYPE_5__* prev; struct TYPE_5__* next; int suspect; } ;
typedef TYPE_1__ git_blame__entry ;
struct TYPE_6__ {TYPE_1__* ent; } ;
typedef TYPE_2__ git_blame ;


 int origin_incref (int ) ;

__attribute__((used)) static void add_blame_entry(git_blame *blame, git_blame__entry *e)
{
 git_blame__entry *ent, *prev = ((void*)0);

 origin_incref(e->suspect);

 for (ent = blame->ent; ent && ent->lno < e->lno; ent = ent->next)
  prev = ent;


 e->prev = prev;
 if (prev) {
  e->next = prev->next;
  prev->next = e;
 } else {
  e->next = blame->ent;
  blame->ent = e;
 }
 if (e->next)
  e->next->prev = e;
}
