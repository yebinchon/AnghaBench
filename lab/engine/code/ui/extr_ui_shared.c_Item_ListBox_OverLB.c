
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int x; int y; int h; int w; } ;
typedef TYPE_3__ rectDef_t ;
struct TYPE_8__ {int x; int y; int h; int w; } ;
struct TYPE_9__ {int flags; TYPE_1__ rect; } ;
struct TYPE_11__ {TYPE_2__ window; } ;
typedef TYPE_4__ itemDef_t ;


 int Item_ListBox_ThumbPosition (TYPE_4__*) ;
 scalar_t__ Rect_ContainsPoint (TYPE_3__*,float,float) ;
 int SCROLLBAR_SIZE ;
 int WINDOW_HORIZONTAL ;
 int WINDOW_LB_LEFTARROW ;
 int WINDOW_LB_PGDN ;
 int WINDOW_LB_PGUP ;
 int WINDOW_LB_RIGHTARROW ;
 int WINDOW_LB_THUMB ;

int Item_ListBox_OverLB(itemDef_t *item, float x, float y) {
 rectDef_t r;
 int thumbstart;

 if (item->window.flags & WINDOW_HORIZONTAL) {

  r.x = item->window.rect.x;
  r.y = item->window.rect.y + item->window.rect.h - SCROLLBAR_SIZE;
  r.h = r.w = SCROLLBAR_SIZE;
  if (Rect_ContainsPoint(&r, x, y)) {
   return WINDOW_LB_LEFTARROW;
  }

  r.x = item->window.rect.x + item->window.rect.w - SCROLLBAR_SIZE;
  if (Rect_ContainsPoint(&r, x, y)) {
   return WINDOW_LB_RIGHTARROW;
  }

  thumbstart = Item_ListBox_ThumbPosition(item);
  r.x = thumbstart;
  if (Rect_ContainsPoint(&r, x, y)) {
   return WINDOW_LB_THUMB;
  }
  r.x = item->window.rect.x + SCROLLBAR_SIZE;
  r.w = thumbstart - r.x;
  if (Rect_ContainsPoint(&r, x, y)) {
   return WINDOW_LB_PGUP;
  }
  r.x = thumbstart + SCROLLBAR_SIZE;
  r.w = item->window.rect.x + item->window.rect.w - SCROLLBAR_SIZE;
  if (Rect_ContainsPoint(&r, x, y)) {
   return WINDOW_LB_PGDN;
  }
 } else {
  r.x = item->window.rect.x + item->window.rect.w - SCROLLBAR_SIZE;
  r.y = item->window.rect.y;
  r.h = r.w = SCROLLBAR_SIZE;
  if (Rect_ContainsPoint(&r, x, y)) {
   return WINDOW_LB_LEFTARROW;
  }
  r.y = item->window.rect.y + item->window.rect.h - SCROLLBAR_SIZE;
  if (Rect_ContainsPoint(&r, x, y)) {
   return WINDOW_LB_RIGHTARROW;
  }
  thumbstart = Item_ListBox_ThumbPosition(item);
  r.y = thumbstart;
  if (Rect_ContainsPoint(&r, x, y)) {
   return WINDOW_LB_THUMB;
  }
  r.y = item->window.rect.y + SCROLLBAR_SIZE;
  r.h = thumbstart - r.y;
  if (Rect_ContainsPoint(&r, x, y)) {
   return WINDOW_LB_PGUP;
  }
  r.y = thumbstart + SCROLLBAR_SIZE;
  r.h = item->window.rect.y + item->window.rect.h - SCROLLBAR_SIZE;
  if (Rect_ContainsPoint(&r, x, y)) {
   return WINDOW_LB_PGDN;
  }
 }
 return 0;
}
