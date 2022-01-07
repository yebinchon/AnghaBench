
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; int flags; } ;
struct TYPE_5__ {float* color; int style; int string; TYPE_1__ generic; } ;
typedef TYPE_2__ menutext_s ;


 int QMF_GRAYED ;
 int UI_DrawBannerString (int,int,int ,int ,float*) ;
 float* text_color_disabled ;

__attribute__((used)) static void BText_Draw( menutext_s *t )
{
 int x;
 int y;
 float* color;

 x = t->generic.x;
 y = t->generic.y;

 if (t->generic.flags & QMF_GRAYED)
  color = text_color_disabled;
 else
  color = t->color;

 UI_DrawBannerString( x, y, t->string, t->style, color );
}
