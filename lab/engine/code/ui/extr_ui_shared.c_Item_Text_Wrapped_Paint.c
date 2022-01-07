
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec4_t ;
typedef int text ;
struct TYPE_7__ {float x; float y; } ;
struct TYPE_8__ {char* text; int textStyle; int textscale; TYPE_1__ textRect; int * cvar; } ;
typedef TYPE_2__ itemDef_t ;
struct TYPE_9__ {int (* drawText ) (float,float,int ,int ,char const*,int ,int ,int ) ;int (* getCVarString ) (int *,char*,int) ;} ;


 TYPE_6__* DC ;
 int Item_SetTextExtents (TYPE_2__*,int*,int*,char const*) ;
 int Item_TextColor (TYPE_2__*,int *) ;
 char* strchr (char const*,char) ;
 int strncpy (char*,char const*,int) ;
 int stub1 (int *,char*,int) ;
 int stub2 (float,float,int ,int ,char*,int ,int ,int ) ;
 int stub3 (float,float,int ,int ,char const*,int ,int ,int ) ;

void Item_Text_Wrapped_Paint(itemDef_t *item) {
 char text[1024];
 const char *p, *start, *textPtr;
 char buff[1024];
 int width, height;
 float x, y;
 vec4_t color;




 if (item->text == ((void*)0)) {
  if (item->cvar == ((void*)0)) {
   return;
  }
  else {
   DC->getCVarString(item->cvar, text, sizeof(text));
   textPtr = text;
  }
 }
 else {
  textPtr = item->text;
 }
 if (*textPtr == '\0') {
  return;
 }

 Item_TextColor(item, &color);
 Item_SetTextExtents(item, &width, &height, textPtr);

 x = item->textRect.x;
 y = item->textRect.y;
 start = textPtr;
 p = strchr(textPtr, '\r');
 while (p && *p) {
  strncpy(buff, start, p-start+1);
  buff[p-start] = '\0';
  DC->drawText(x, y, item->textscale, color, buff, 0, 0, item->textStyle);
  y += height + 5;
  start += p - start + 1;
  p = strchr(p+1, '\r');
 }
 DC->drawText(x, y, item->textscale, color, start, 0, 0, item->textStyle);
}
