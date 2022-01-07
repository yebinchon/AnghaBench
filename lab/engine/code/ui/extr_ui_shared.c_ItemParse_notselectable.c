
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {int notselectable; } ;
typedef TYPE_1__ listBoxDef_t ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ typeData; } ;
typedef TYPE_2__ itemDef_t ;


 scalar_t__ ITEM_TYPE_LISTBOX ;
 int Item_ValidateTypeData (TYPE_2__*) ;
 int qtrue ;

qboolean ItemParse_notselectable( itemDef_t *item, int handle ) {
 listBoxDef_t *listPtr;
 Item_ValidateTypeData(item);
 listPtr = (listBoxDef_t*)item->typeData;
 if (item->type == ITEM_TYPE_LISTBOX && listPtr) {
  listPtr->notselectable = qtrue;
 }
 return qtrue;
}
