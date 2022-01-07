
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t cursor_prev; size_t cursor; size_t nitems; void** items; } ;
typedef TYPE_1__ menuframework_s ;
struct TYPE_5__ {void (* callback ) (void*,int) ;} ;
typedef TYPE_2__ menucommon_s ;


 int QM_GOTFOCUS ;
 int QM_LOSTFOCUS ;

void Menu_CursorMoved( menuframework_s *m )
{
 void (*callback)( void *self, int notification );

 if (m->cursor_prev == m->cursor)
  return;

 if (m->cursor_prev >= 0 && m->cursor_prev < m->nitems)
 {
  callback = ((menucommon_s*)(m->items[m->cursor_prev]))->callback;
  if (callback)
   callback(m->items[m->cursor_prev],QM_LOSTFOCUS);
 }

 if (m->cursor >= 0 && m->cursor < m->nitems)
 {
  callback = ((menucommon_s*)(m->items[m->cursor]))->callback;
  if (callback)
   callback(m->items[m->cursor],QM_GOTFOCUS);
 }
}
