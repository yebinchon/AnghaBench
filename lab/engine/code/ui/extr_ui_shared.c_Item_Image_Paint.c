
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ h; scalar_t__ w; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {TYPE_1__ rect; } ;
struct TYPE_8__ {int asset; TYPE_2__ window; } ;
typedef TYPE_3__ itemDef_t ;
struct TYPE_9__ {int (* drawHandlePic ) (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;} ;


 TYPE_5__* DC ;
 int stub1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;

void Item_Image_Paint(itemDef_t *item) {
 if (item == ((void*)0)) {
  return;
 }
 DC->drawHandlePic(item->window.rect.x+1, item->window.rect.y+1, item->window.rect.w-2, item->window.rect.h-2, item->asset);
}
