
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sfxHandle_t ;
struct TYPE_6__ {int left; int top; int (* callback ) (TYPE_2__*,int ) ;int bottom; int right; } ;
struct TYPE_7__ {int oldvalue; int curvalue; int numitems; TYPE_1__ generic; } ;
typedef TYPE_2__ menulist_s ;
struct TYPE_9__ {int menu; TYPE_2__ list; } ;
struct TYPE_8__ {int cursory; } ;







 int Menu_DefaultKey (int *,int) ;
 scalar_t__ Menu_ItemAtCursor (int *) ;
 int PROP_HEIGHT ;
 int QM_ACTIVATED ;
 int UI_CursorInRect (int,int,int ,int ) ;
 int menu_move_sound ;
 int menu_null_sound ;
 int stub1 (TYPE_2__*,int ) ;
 TYPE_4__ teamOrdersMenuInfo ;
 TYPE_3__ uis ;

sfxHandle_t UI_TeamOrdersMenu_Key( int key ) {
 menulist_s *l;
 int x;
 int y;
 int index;

 l = (menulist_s *)Menu_ItemAtCursor( &teamOrdersMenuInfo.menu );
 if( l != &teamOrdersMenuInfo.list ) {
  return Menu_DefaultKey( &teamOrdersMenuInfo.menu, key );
 }

 switch( key ) {
  case 129:
   x = l->generic.left;
   y = l->generic.top;
   if( UI_CursorInRect( x, y, l->generic.right - x, l->generic.bottom - y ) ) {
    index = (uis.cursory - y) / PROP_HEIGHT;
    l->oldvalue = l->curvalue;
    l->curvalue = index;

    if( l->generic.callback ) {
     l->generic.callback( l, QM_ACTIVATED );
     return menu_move_sound;
    }
   }
   return menu_null_sound;

  case 130:
  case 128:
   l->oldvalue = l->curvalue;

   if( l->curvalue == 0 ) {
    l->curvalue = l->numitems - 1;
   }
   else {
    l->curvalue--;
   }
   return menu_move_sound;

  case 131:
  case 132:
   l->oldvalue = l->curvalue;

   if( l->curvalue == l->numitems - 1 ) {
    l->curvalue = 0;;
   }
   else {
    l->curvalue++;
   }
   return menu_move_sound;
 }

 return Menu_DefaultKey( &teamOrdersMenuInfo.menu, key );
}
