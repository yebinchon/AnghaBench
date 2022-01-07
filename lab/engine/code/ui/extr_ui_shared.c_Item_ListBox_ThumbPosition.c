
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {float startPos; } ;
typedef TYPE_3__ listBoxDef_t ;
struct TYPE_7__ {float w; int x; float h; int y; } ;
struct TYPE_8__ {int flags; TYPE_1__ rect; } ;
struct TYPE_10__ {TYPE_2__ window; scalar_t__ typeData; } ;
typedef TYPE_4__ itemDef_t ;


 float Item_ListBox_MaxScroll (TYPE_4__*) ;
 int SCROLLBAR_SIZE ;
 int WINDOW_HORIZONTAL ;

int Item_ListBox_ThumbPosition(itemDef_t *item) {
 float max, pos, size;
 listBoxDef_t *listPtr = (listBoxDef_t*)item->typeData;

 max = Item_ListBox_MaxScroll(item);
 if (item->window.flags & WINDOW_HORIZONTAL) {
  size = item->window.rect.w - (SCROLLBAR_SIZE * 2) - 2;
  if (max > 0) {
   pos = (size-SCROLLBAR_SIZE) / (float) max;
  } else {
   pos = 0;
  }
  pos *= listPtr->startPos;
  return item->window.rect.x + 1 + SCROLLBAR_SIZE + pos;
 }
 else {
  size = item->window.rect.h - (SCROLLBAR_SIZE * 2) - 2;
  if (max > 0) {
   pos = (size-SCROLLBAR_SIZE) / (float) max;
  } else {
   pos = 0;
  }
  pos *= listPtr->startPos;
  return item->window.rect.y + 1 + SCROLLBAR_SIZE + pos;
 }
}
