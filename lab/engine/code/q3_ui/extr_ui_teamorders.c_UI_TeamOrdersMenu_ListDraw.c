
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {scalar_t__ menuPosition; int y; TYPE_1__* parent; } ;
struct TYPE_6__ {int numitems; int curvalue; int * itemnames; TYPE_2__ generic; } ;
typedef TYPE_3__ menulist_s ;
struct TYPE_4__ {scalar_t__ cursor; } ;


 scalar_t__ PROP_HEIGHT ;
 int UI_CENTER ;
 int UI_DrawProportionalString (int,int,int ,int,float*) ;
 int UI_LEFT ;
 int UI_PULSE ;
 int UI_SMALLFONT ;
 float* color_blue ;
 float* color_yellow ;

__attribute__((used)) static void UI_TeamOrdersMenu_ListDraw( void *self ) {
 menulist_s *l;
 int x;
 int y;
 int i;
 float *color;
 qboolean hasfocus;
 int style;

 l = (menulist_s *)self;

 hasfocus = (l->generic.parent->cursor == l->generic.menuPosition);

 x = 320;
 y = l->generic.y;
 for( i = 0; i < l->numitems; i++ ) {
  style = UI_LEFT|UI_SMALLFONT|UI_CENTER;
  if( i == l->curvalue ) {
   color = color_yellow;
   if( hasfocus ) {
    style |= UI_PULSE;
   }
  }
  else {
   color = color_blue;
  }

  UI_DrawProportionalString( x, y, l->itemnames[i], style, color );
  y += PROP_HEIGHT;
 }
}
