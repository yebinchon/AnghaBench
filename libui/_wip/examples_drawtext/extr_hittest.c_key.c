
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Key; int ExtKey; scalar_t__ Up; } ;
typedef TYPE_1__ uiAreaKeyEvent ;


 int attrstr ;
 int caretPos ;
 int redraw () ;
 size_t uiAttributedStringByteIndexToGrapheme (int ,int ) ;
 int uiAttributedStringGraphemeToByteIndex (int ,size_t) ;
 size_t uiAttributedStringNumGraphemes (int ) ;





__attribute__((used)) static int key(uiAreaKeyEvent *e)
{
 size_t grapheme;

 if (e->Up)
  return 0;
 if (e->Key != 0)
  return 0;
 switch (e->ExtKey) {
 case 128:

  return 1;
 case 131:

  return 1;
 case 130:
  grapheme = uiAttributedStringByteIndexToGrapheme(attrstr, caretPos);
  if (grapheme == 0)
   return 0;
  grapheme--;
  caretPos = uiAttributedStringGraphemeToByteIndex(attrstr, grapheme);
  redraw();
  return 1;
 case 129:
  grapheme = uiAttributedStringByteIndexToGrapheme(attrstr, caretPos);
  if (grapheme == uiAttributedStringNumGraphemes(attrstr))
   return 0;
  grapheme++;
  caretPos = uiAttributedStringGraphemeToByteIndex(attrstr, grapheme);
  redraw();
  return 1;
 }
 return 0;
}
