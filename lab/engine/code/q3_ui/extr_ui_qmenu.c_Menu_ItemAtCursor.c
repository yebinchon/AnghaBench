
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t cursor; size_t nitems; void** items; } ;
typedef TYPE_1__ menuframework_s ;



void *Menu_ItemAtCursor( menuframework_s *m )
{
 if ( m->cursor < 0 || m->cursor >= m->nitems )
  return ((void*)0);

 return m->items[m->cursor];
}
