
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ h; int y; } ;
typedef TYPE_2__ rectDef_t ;
struct TYPE_9__ {int flags; } ;
struct TYPE_11__ {int cvarFlags; scalar_t__ type; TYPE_1__ window; int mouseEnter; int mouseExitText; int mouseEnterText; TYPE_2__ textRect; } ;
typedef TYPE_3__ itemDef_t ;


 int CVAR_DISABLE ;
 int CVAR_ENABLE ;
 int CVAR_HIDE ;
 int CVAR_SHOW ;
 scalar_t__ ITEM_TYPE_LISTBOX ;
 int Item_EnableShowViaCvar (TYPE_3__*,int) ;
 int Item_ListBox_MouseEnter (TYPE_3__*,float,float) ;
 int Item_RunScript (TYPE_3__*,int ) ;
 scalar_t__ Rect_ContainsPoint (TYPE_2__*,float,float) ;
 int WINDOW_MOUSEOVER ;
 int WINDOW_MOUSEOVERTEXT ;

void Item_MouseEnter(itemDef_t *item, float x, float y) {
 rectDef_t r;
 if (item) {
  r = item->textRect;
  r.y -= r.h;



  if (item->cvarFlags & (CVAR_ENABLE | CVAR_DISABLE) && !Item_EnableShowViaCvar(item, CVAR_ENABLE)) {
   return;
  }

  if (item->cvarFlags & (CVAR_SHOW | CVAR_HIDE) && !Item_EnableShowViaCvar(item, CVAR_SHOW)) {
   return;
  }

  if (Rect_ContainsPoint(&r, x, y)) {
   if (!(item->window.flags & WINDOW_MOUSEOVERTEXT)) {
    Item_RunScript(item, item->mouseEnterText);
    item->window.flags |= WINDOW_MOUSEOVERTEXT;
   }
   if (!(item->window.flags & WINDOW_MOUSEOVER)) {
    Item_RunScript(item, item->mouseEnter);
    item->window.flags |= WINDOW_MOUSEOVER;
   }

  } else {

   if (item->window.flags & WINDOW_MOUSEOVERTEXT) {

    Item_RunScript(item, item->mouseExitText);
    item->window.flags &= ~WINDOW_MOUSEOVERTEXT;
   }
   if (!(item->window.flags & WINDOW_MOUSEOVER)) {
    Item_RunScript(item, item->mouseEnter);
    item->window.flags |= WINDOW_MOUSEOVER;
   }

   if (item->type == ITEM_TYPE_LISTBOX) {
    Item_ListBox_MouseEnter(item, x, y);
   }
  }
 }
}
