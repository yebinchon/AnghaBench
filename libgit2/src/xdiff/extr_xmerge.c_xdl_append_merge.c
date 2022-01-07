
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long i1; long chg1; long i2; long chg2; int mode; long chg0; long i0; struct TYPE_4__* next; } ;
typedef TYPE_1__ xdmerge_t ;


 TYPE_1__* xdl_malloc (int) ;

__attribute__((used)) static int xdl_append_merge(xdmerge_t **merge, int mode,
       long i0, long chg0,
       long i1, long chg1,
       long i2, long chg2)
{
 xdmerge_t *m = *merge;
 if (m && (i1 <= m->i1 + m->chg1 || i2 <= m->i2 + m->chg2)) {
  if (mode != m->mode)
   m->mode = 0;
  m->chg0 = i0 + chg0 - m->i0;
  m->chg1 = i1 + chg1 - m->i1;
  m->chg2 = i2 + chg2 - m->i2;
 } else {
  m = xdl_malloc(sizeof(xdmerge_t));
  if (!m)
   return -1;
  m->next = ((void*)0);
  m->mode = mode;
  m->i0 = i0;
  m->chg0 = chg0;
  m->i1 = i1;
  m->chg1 = chg1;
  m->i2 = i2;
  m->chg2 = chg2;
  if (*merge)
   (*merge)->next = m;
  *merge = m;
 }
 return 0;
}
