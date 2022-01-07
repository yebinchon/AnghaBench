
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int elementWidth; int elementHeight; } ;
typedef TYPE_3__ listBoxDef_t ;
struct TYPE_7__ {int w; int h; } ;
struct TYPE_8__ {int flags; TYPE_1__ rect; } ;
struct TYPE_10__ {TYPE_2__ window; int special; scalar_t__ typeData; } ;
typedef TYPE_4__ itemDef_t ;
struct TYPE_11__ {int (* feederCount ) (int ) ;} ;


 TYPE_6__* DC ;
 int WINDOW_HORIZONTAL ;
 int stub1 (int ) ;

int Item_ListBox_MaxScroll(itemDef_t *item) {
 listBoxDef_t *listPtr = (listBoxDef_t*)item->typeData;
 int count = DC->feederCount(item->special);
 int max;

 if (item->window.flags & WINDOW_HORIZONTAL) {
  max = count - (item->window.rect.w / listPtr->elementWidth) + 1;
 }
 else {
  max = count - (item->window.rect.h / listPtr->elementHeight) + 1;
 }
 if (max < 0) {
  return 0;
 }
 return max;
}
