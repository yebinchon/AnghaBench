
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uiDrawTextLayout ;
struct TYPE_5__ {int Down; scalar_t__ Y; scalar_t__ X; scalar_t__ AreaWidth; } ;
typedef TYPE_1__ uiAreaMouseEvent ;
struct TYPE_6__ {scalar_t__ Width; } ;


 int caretLabel ;
 int caretLine ;
 scalar_t__ caretPos ;
 int margins ;
 TYPE_2__ params ;
 int redraw () ;
 int sprintf (char*,char*,int,int) ;
 int uiDrawFreeTextLayout (int *) ;
 int * uiDrawNewTextLayout (TYPE_2__*) ;
 int uiDrawTextLayoutHitTest (int *,scalar_t__,scalar_t__,scalar_t__*,int*) ;
 int uiLabelSetText (int ,char*) ;

__attribute__((used)) static void mouse(uiAreaMouseEvent *e)
{
 uiDrawTextLayout *layout;
 char labelText[128];

 if (e->Down != 1)
  return;

 params.Width = e->AreaWidth - 2 * margins;
 layout = uiDrawNewTextLayout(&params);
 uiDrawTextLayoutHitTest(layout,
  e->X - margins, e->Y - margins,
  &caretPos, &caretLine);
 uiDrawFreeTextLayout(layout);




 sprintf(labelText, "pos %d line %d",
  (int) caretPos, caretLine);
 uiLabelSetText(caretLabel, labelText);

 redraw();
}
