
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {int cvar; scalar_t__ typeData; } ;
typedef TYPE_1__ itemDef_t ;
struct TYPE_6__ {int maxVal; int minVal; int defVal; } ;
typedef TYPE_2__ editFieldDef_t ;


 int Item_ValidateTypeData (TYPE_1__*) ;
 scalar_t__ PC_Float_Parse (int,int *) ;
 scalar_t__ PC_String_Parse (int,int *) ;
 int qfalse ;
 int qtrue ;

qboolean ItemParse_cvarFloat( itemDef_t *item, int handle ) {
 editFieldDef_t *editPtr;

 Item_ValidateTypeData(item);
 if (!item->typeData)
  return qfalse;
 editPtr = (editFieldDef_t*)item->typeData;
 if (PC_String_Parse(handle, &item->cvar) &&
  PC_Float_Parse(handle, &editPtr->defVal) &&
  PC_Float_Parse(handle, &editPtr->minVal) &&
  PC_Float_Parse(handle, &editPtr->maxVal)) {
  return qtrue;
 }
 return qfalse;
}
