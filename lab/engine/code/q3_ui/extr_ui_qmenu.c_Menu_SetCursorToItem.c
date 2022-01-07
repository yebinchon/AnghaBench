
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nitems; void** items; } ;
typedef TYPE_1__ menuframework_s ;


 int Menu_SetCursor (TYPE_1__*,int) ;

void Menu_SetCursorToItem( menuframework_s *m, void* ptr )
{
 int i;

 for (i=0; i<m->nitems; i++)
 {
  if (m->items[i] == ptr)
  {
   Menu_SetCursor( m, i );
   return;
  }
 }
}
