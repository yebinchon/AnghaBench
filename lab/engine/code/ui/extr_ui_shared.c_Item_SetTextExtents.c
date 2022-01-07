
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ownerDraw; } ;
struct TYPE_6__ {int w; int h; int y; scalar_t__ x; } ;
struct TYPE_7__ {char const* text; scalar_t__ type; scalar_t__ textalignment; TYPE_3__ window; TYPE_1__ textRect; scalar_t__ textalignx; int textaligny; int textscale; scalar_t__ cvar; } ;
typedef TYPE_2__ itemDef_t ;
struct TYPE_9__ {int (* textWidth ) (char*,int ,int ) ;int (* textHeight ) (char const*,int ,int ) ;int (* getCVarString ) (scalar_t__,char*,int) ;scalar_t__ (* ownerDrawWidth ) (int ,int ) ;} ;


 TYPE_5__* DC ;
 scalar_t__ ITEM_ALIGN_CENTER ;
 scalar_t__ ITEM_ALIGN_RIGHT ;
 scalar_t__ ITEM_TYPE_EDITFIELD ;
 scalar_t__ ITEM_TYPE_OWNERDRAW ;
 int ToWindowCoords (scalar_t__*,int *,TYPE_3__*) ;
 int stub1 (char*,int ,int ) ;
 scalar_t__ stub2 (int ,int ) ;
 int stub3 (scalar_t__,char*,int) ;
 int stub4 (char*,int ,int ) ;
 int stub5 (char const*,int ,int ) ;
 int stub6 (char const*,int ,int ) ;

void Item_SetTextExtents(itemDef_t *item, int *width, int *height, const char *text) {
 const char *textPtr = (text) ? text : item->text;

 if (textPtr == ((void*)0) ) {
  return;
 }

 *width = item->textRect.w;
 *height = item->textRect.h;


 if (*width == 0 || (item->type == ITEM_TYPE_OWNERDRAW && item->textalignment == ITEM_ALIGN_CENTER)) {
  int originalWidth = DC->textWidth(item->text, item->textscale, 0);

  if (item->type == ITEM_TYPE_OWNERDRAW && (item->textalignment == ITEM_ALIGN_CENTER || item->textalignment == ITEM_ALIGN_RIGHT)) {
   originalWidth += DC->ownerDrawWidth(item->window.ownerDraw, item->textscale);
  } else if (item->type == ITEM_TYPE_EDITFIELD && item->textalignment == ITEM_ALIGN_CENTER && item->cvar) {
   char buff[256];
   DC->getCVarString(item->cvar, buff, 256);
   originalWidth += DC->textWidth(buff, item->textscale, 0);
  }

  *width = DC->textWidth(textPtr, item->textscale, 0);
  *height = DC->textHeight(textPtr, item->textscale, 0);
  item->textRect.w = *width;
  item->textRect.h = *height;
  item->textRect.x = item->textalignx;
  item->textRect.y = item->textaligny;
  if (item->textalignment == ITEM_ALIGN_RIGHT) {
   item->textRect.x = item->textalignx - originalWidth;
  } else if (item->textalignment == ITEM_ALIGN_CENTER) {
   item->textRect.x = item->textalignx - originalWidth / 2;
  }

  ToWindowCoords(&item->textRect.x, &item->textRect.y, &item->window);
 }
}
