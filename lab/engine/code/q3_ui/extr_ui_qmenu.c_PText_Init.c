
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; int flags; int left; int right; int top; int bottom; } ;
struct TYPE_5__ {TYPE_1__ generic; int string; int style; } ;
typedef TYPE_2__ menutext_s ;


 float PROP_GAP_WIDTH ;
 float PROP_HEIGHT ;
 int QMF_CENTER_JUSTIFY ;
 int QMF_RIGHT_JUSTIFY ;
 float UI_ProportionalSizeScale (int ) ;
 float UI_ProportionalStringWidth (int ) ;

__attribute__((used)) static void PText_Init( menutext_s *t )
{
 int x;
 int y;
 int w;
 int h;
 float sizeScale;

 sizeScale = UI_ProportionalSizeScale( t->style );

 x = t->generic.x;
 y = t->generic.y;
 w = UI_ProportionalStringWidth( t->string ) * sizeScale;
 h = PROP_HEIGHT * sizeScale;

 if( t->generic.flags & QMF_RIGHT_JUSTIFY ) {
  x -= w;
 }
 else if( t->generic.flags & QMF_CENTER_JUSTIFY ) {
  x -= w / 2;
 }

 t->generic.left = x - PROP_GAP_WIDTH * sizeScale;
 t->generic.right = x + w + PROP_GAP_WIDTH * sizeScale;
 t->generic.top = y;
 t->generic.bottom = y + h;
}
