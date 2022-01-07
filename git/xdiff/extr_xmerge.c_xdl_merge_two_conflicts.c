
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; scalar_t__ i2; scalar_t__ chg2; scalar_t__ i1; scalar_t__ chg1; } ;
typedef TYPE_1__ xdmerge_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void xdl_merge_two_conflicts(xdmerge_t *m)
{
 xdmerge_t *next_m = m->next;
 m->chg1 = next_m->i1 + next_m->chg1 - m->i1;
 m->chg2 = next_m->i2 + next_m->chg2 - m->i2;
 m->next = next_m->next;
 free(next_m);
}
