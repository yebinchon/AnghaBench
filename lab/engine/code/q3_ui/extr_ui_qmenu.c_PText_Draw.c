
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int y; int flags; int parent; } ;
struct TYPE_6__ {float* color; int style; int string; TYPE_1__ generic; } ;
typedef TYPE_2__ menutext_s ;


 TYPE_2__* Menu_ItemAtCursor (int ) ;
 int QMF_GRAYED ;
 int QMF_PULSEIFFOCUS ;
 int UI_DrawProportionalString (int,int,int ,int,float*) ;
 int UI_INVERSE ;
 int UI_PULSE ;
 float* color_blue ;

__attribute__((used)) static void PText_Draw( menutext_s *t )
{
 int x;
 int y;
 float * color;
 int style;

 x = t->generic.x;
 y = t->generic.y;

 if (t->generic.flags & QMF_GRAYED)
  color = color_blue;
 else
  color = t->color;

 style = t->style;
 if( t->generic.flags & QMF_PULSEIFFOCUS ) {
  if( Menu_ItemAtCursor( t->generic.parent ) == t ) {
   style |= UI_PULSE;
  }
  else {
   style |= UI_INVERSE;
  }
 }

 UI_DrawProportionalString( x, y, t->string, style, color );
}
