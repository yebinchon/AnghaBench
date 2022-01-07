
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_7__ {char* string; } ;
typedef TYPE_1__ pc_token_t ;
struct TYPE_8__ {size_t count; int * cvarValue; int * cvarList; int strDef; } ;
typedef TYPE_2__ multiDef_t ;
struct TYPE_9__ {scalar_t__ typeData; } ;
typedef TYPE_3__ itemDef_t ;


 int Item_ValidateTypeData (TYPE_3__*) ;
 size_t MAX_MULTI_CVARS ;
 int PC_Float_Parse (int,int *) ;
 int PC_SourceError (int,char*) ;
 int String_Alloc (char*) ;
 int qfalse ;
 int qtrue ;
 int trap_PC_ReadToken (int,TYPE_1__*) ;

qboolean ItemParse_cvarFloatList( itemDef_t *item, int handle ) {
 pc_token_t token;
 multiDef_t *multiPtr;

 Item_ValidateTypeData(item);
 if (!item->typeData)
  return qfalse;
 multiPtr = (multiDef_t*)item->typeData;
 multiPtr->count = 0;
 multiPtr->strDef = qfalse;

 if (!trap_PC_ReadToken(handle, &token))
  return qfalse;
 if (*token.string != '{') {
  return qfalse;
 }

 while ( 1 ) {
  if (!trap_PC_ReadToken(handle, &token)) {
   PC_SourceError(handle, "end of file inside menu item");
   return qfalse;
  }

  if (*token.string == '}') {
   return qtrue;
  }

  if (*token.string == ',' || *token.string == ';') {
   continue;
  }

  multiPtr->cvarList[multiPtr->count] = String_Alloc(token.string);
  if (!PC_Float_Parse(handle, &multiPtr->cvarValue[multiPtr->count])) {
   return qfalse;
  }

  multiPtr->count++;
  if (multiPtr->count >= MAX_MULTI_CVARS) {
   return qfalse;
  }

 }
 return qfalse;
}
