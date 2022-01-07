
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_10__ {int elementWidth; int cursorPos; int startPos; int elementHeight; int notselectable; scalar_t__ doubleClick; } ;
typedef TYPE_2__ listBoxDef_t ;
struct TYPE_12__ {int w; int h; } ;
struct TYPE_9__ {int flags; TYPE_4__ rect; } ;
struct TYPE_11__ {int cursorPos; int special; TYPE_1__ window; scalar_t__ typeData; } ;
typedef TYPE_3__ itemDef_t ;
struct TYPE_13__ {int (* feederCount ) (int ) ;scalar_t__ realTime; int (* feederSelection ) (int ,int) ;int cursory; int cursorx; } ;


 TYPE_8__* DC ;
 scalar_t__ DOUBLE_CLICK_DELAY ;
 int Item_ListBox_MaxScroll (TYPE_3__*) ;
 int Item_RunScript (TYPE_3__*,scalar_t__) ;
 int K_DOWNARROW ;
 int K_END ;
 int K_HOME ;
 int K_KP_DOWNARROW ;
 int K_KP_END ;
 int K_KP_HOME ;
 int K_KP_LEFTARROW ;
 int K_KP_PGDN ;
 int K_KP_PGUP ;
 int K_KP_RIGHTARROW ;
 int K_KP_UPARROW ;
 int K_LEFTARROW ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int K_MWHEELDOWN ;
 int K_MWHEELUP ;
 int K_PGDN ;
 int K_PGUP ;
 int K_RIGHTARROW ;
 int K_UPARROW ;
 scalar_t__ Rect_ContainsPoint (TYPE_4__*,int ,int ) ;
 int WINDOW_HASFOCUS ;
 int WINDOW_HORIZONTAL ;
 int WINDOW_LB_LEFTARROW ;
 int WINDOW_LB_PGDN ;
 int WINDOW_LB_PGUP ;
 int WINDOW_LB_RIGHTARROW ;
 int WINDOW_LB_THUMB ;
 scalar_t__ lastListBoxClickTime ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int stub1 (int ) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int) ;
 int stub4 (int ,int) ;
 int stub5 (int ,int) ;
 int stub6 (int ,int) ;
 int stub7 (int ,int) ;
 int stub8 (int ,int) ;

qboolean Item_ListBox_HandleKey(itemDef_t *item, int key, qboolean down, qboolean force) {
 listBoxDef_t *listPtr = (listBoxDef_t*)item->typeData;
 int count = DC->feederCount(item->special);
 int max, viewmax;

 if (force || (Rect_ContainsPoint(&item->window.rect, DC->cursorx, DC->cursory) && item->window.flags & WINDOW_HASFOCUS)) {
  max = Item_ListBox_MaxScroll(item);
  if (item->window.flags & WINDOW_HORIZONTAL) {
   viewmax = (item->window.rect.w / listPtr->elementWidth);
   if ( key == K_LEFTARROW || key == K_KP_LEFTARROW )
   {
    if (!listPtr->notselectable) {
     listPtr->cursorPos--;
     if (listPtr->cursorPos < 0) {
      listPtr->cursorPos = 0;
     }
     if (listPtr->cursorPos < listPtr->startPos) {
      listPtr->startPos = listPtr->cursorPos;
     }
     if (listPtr->cursorPos >= listPtr->startPos + viewmax) {
      listPtr->startPos = listPtr->cursorPos - viewmax + 1;
     }
     item->cursorPos = listPtr->cursorPos;
     DC->feederSelection(item->special, item->cursorPos);
    }
    else {
     listPtr->startPos--;
     if (listPtr->startPos < 0)
      listPtr->startPos = 0;
    }
    return qtrue;
   }
   if ( key == K_RIGHTARROW || key == K_KP_RIGHTARROW )
   {
    if (!listPtr->notselectable) {
     listPtr->cursorPos++;
     if (listPtr->cursorPos < listPtr->startPos) {
      listPtr->startPos = listPtr->cursorPos;
     }
     if (listPtr->cursorPos >= count) {
      listPtr->cursorPos = count-1;
     }
     if (listPtr->cursorPos >= listPtr->startPos + viewmax) {
      listPtr->startPos = listPtr->cursorPos - viewmax + 1;
     }
     item->cursorPos = listPtr->cursorPos;
     DC->feederSelection(item->special, item->cursorPos);
    }
    else {
     listPtr->startPos++;
     if (listPtr->startPos >= count)
      listPtr->startPos = count-1;
    }
    return qtrue;
   }
  }
  else {
   viewmax = (item->window.rect.h / listPtr->elementHeight);
   if ( key == K_UPARROW || key == K_KP_UPARROW )
   {
    if (!listPtr->notselectable) {
     listPtr->cursorPos--;
     if (listPtr->cursorPos < 0) {
      listPtr->cursorPos = 0;
     }
     if (listPtr->cursorPos < listPtr->startPos) {
      listPtr->startPos = listPtr->cursorPos;
     }
     if (listPtr->cursorPos >= listPtr->startPos + viewmax) {
      listPtr->startPos = listPtr->cursorPos - viewmax + 1;
     }
     item->cursorPos = listPtr->cursorPos;
     DC->feederSelection(item->special, item->cursorPos);
    }
    else {
     listPtr->startPos--;
     if (listPtr->startPos < 0)
      listPtr->startPos = 0;
    }
    return qtrue;
   }
   if ( key == K_DOWNARROW || key == K_KP_DOWNARROW )
   {
    if (!listPtr->notselectable) {
     listPtr->cursorPos++;
     if (listPtr->cursorPos < listPtr->startPos) {
      listPtr->startPos = listPtr->cursorPos;
     }
     if (listPtr->cursorPos >= count) {
      listPtr->cursorPos = count-1;
     }
     if (listPtr->cursorPos >= listPtr->startPos + viewmax) {
      listPtr->startPos = listPtr->cursorPos - viewmax + 1;
     }
     item->cursorPos = listPtr->cursorPos;
     DC->feederSelection(item->special, item->cursorPos);
    }
    else {
     listPtr->startPos++;
     if (listPtr->startPos > max)
      listPtr->startPos = max;
    }
    return qtrue;
   }
  }




  if ( key == K_MWHEELUP ) {
   int scroll = viewmax < 6 ? 1 : 3;
   listPtr->startPos -= scroll;
   if (listPtr->startPos < 0) {
    listPtr->startPos = 0;
   }
   return qtrue;
  }
  if ( key == K_MWHEELDOWN ) {
   int scroll = viewmax < 6 ? 1 : 3;
   listPtr->startPos += scroll;
   if (listPtr->startPos > max) {
    listPtr->startPos = max;
   }
   return qtrue;
  }


  if (key == K_MOUSE1 || key == K_MOUSE2) {
   if (item->window.flags & WINDOW_LB_LEFTARROW) {
    listPtr->startPos--;
    if (listPtr->startPos < 0) {
     listPtr->startPos = 0;
    }
   } else if (item->window.flags & WINDOW_LB_RIGHTARROW) {

    listPtr->startPos++;
    if (listPtr->startPos > max) {
     listPtr->startPos = max;
    }
   } else if (item->window.flags & WINDOW_LB_PGUP) {

    listPtr->startPos -= viewmax;
    if (listPtr->startPos < 0) {
     listPtr->startPos = 0;
    }
   } else if (item->window.flags & WINDOW_LB_PGDN) {

    listPtr->startPos += viewmax;
    if (listPtr->startPos > max) {
     listPtr->startPos = max;
    }
   } else if (item->window.flags & WINDOW_LB_THUMB) {

   } else {

    if (DC->realTime < lastListBoxClickTime && listPtr->doubleClick) {
     Item_RunScript(item, listPtr->doubleClick);
    }
    lastListBoxClickTime = DC->realTime + DOUBLE_CLICK_DELAY;
    if (item->cursorPos != listPtr->cursorPos) {
     item->cursorPos = listPtr->cursorPos;
     DC->feederSelection(item->special, item->cursorPos);
    }
   }
   return qtrue;
  }
  if ( key == K_HOME || key == K_KP_HOME) {

   listPtr->startPos = 0;
   return qtrue;
  }
  if ( key == K_END || key == K_KP_END) {

   listPtr->startPos = max;
   return qtrue;
  }
  if (key == K_PGUP || key == K_KP_PGUP ) {

   if (!listPtr->notselectable) {
    listPtr->cursorPos -= viewmax;
    if (listPtr->cursorPos < 0) {
     listPtr->cursorPos = 0;
    }
    if (listPtr->cursorPos < listPtr->startPos) {
     listPtr->startPos = listPtr->cursorPos;
    }
    if (listPtr->cursorPos >= listPtr->startPos + viewmax) {
     listPtr->startPos = listPtr->cursorPos - viewmax + 1;
    }
    item->cursorPos = listPtr->cursorPos;
    DC->feederSelection(item->special, item->cursorPos);
   }
   else {
    listPtr->startPos -= viewmax;
    if (listPtr->startPos < 0) {
     listPtr->startPos = 0;
    }
   }
   return qtrue;
  }
  if ( key == K_PGDN || key == K_KP_PGDN ) {

   if (!listPtr->notselectable) {
    listPtr->cursorPos += viewmax;
    if (listPtr->cursorPos < listPtr->startPos) {
     listPtr->startPos = listPtr->cursorPos;
    }
    if (listPtr->cursorPos >= count) {
     listPtr->cursorPos = count-1;
    }
    if (listPtr->cursorPos >= listPtr->startPos + viewmax) {
     listPtr->startPos = listPtr->cursorPos - viewmax + 1;
    }
    item->cursorPos = listPtr->cursorPos;
    DC->feederSelection(item->special, item->cursorPos);
   }
   else {
    listPtr->startPos += viewmax;
    if (listPtr->startPos > max) {
     listPtr->startPos = max;
    }
   }
   return qtrue;
  }
 }
 return qfalse;
}
