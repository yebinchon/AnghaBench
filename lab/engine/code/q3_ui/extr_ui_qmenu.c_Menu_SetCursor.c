
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cursor_prev; int cursor; scalar_t__* items; } ;
typedef TYPE_1__ menuframework_s ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_2__ menucommon_s ;


 int Menu_CursorMoved (TYPE_1__*) ;
 int QMF_GRAYED ;
 int QMF_INACTIVE ;

void Menu_SetCursor( menuframework_s *m, int cursor )
{
 if (((menucommon_s*)(m->items[cursor]))->flags & (QMF_GRAYED|QMF_INACTIVE))
 {

  return;
 }

 m->cursor_prev = m->cursor;
 m->cursor = cursor;

 Menu_CursorMoved( m );
}
