
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {scalar_t__ typeData; } ;
typedef TYPE_1__ itemDef_t ;
struct TYPE_6__ {int maxChars; } ;
typedef TYPE_2__ editFieldDef_t ;


 int Item_ValidateTypeData (TYPE_1__*) ;
 int PC_Int_Parse (int,int*) ;
 int qfalse ;
 int qtrue ;

qboolean ItemParse_maxChars( itemDef_t *item, int handle ) {
 editFieldDef_t *editPtr;
 int maxChars;

 Item_ValidateTypeData(item);
 if (!item->typeData)
  return qfalse;

 if (!PC_Int_Parse(handle, &maxChars)) {
  return qfalse;
 }
 editPtr = (editFieldDef_t*)item->typeData;
 editPtr->maxChars = maxChars;
 return qtrue;
}
