
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {char* string; } ;
typedef TYPE_1__ pc_token_t ;
struct TYPE_6__ {int (* func ) (int *,int) ;} ;
typedef TYPE_2__ keywordHash_t ;
typedef int itemDef_t ;


 int Item_ApplyHacks (int *) ;
 TYPE_2__* KeywordHash_Find (int ,char*) ;
 int PC_SourceError (int,char*,...) ;
 int itemParseKeywordHash ;
 int qfalse ;
 int qtrue ;
 int stub1 (int *,int) ;
 int trap_PC_ReadToken (int,TYPE_1__*) ;

qboolean Item_Parse(int handle, itemDef_t *item) {
 pc_token_t token;
 keywordHash_t *key;


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
   Item_ApplyHacks( item );
   return qtrue;
  }

  key = KeywordHash_Find(itemParseKeywordHash, token.string);
  if (!key) {
   PC_SourceError(handle, "unknown menu item keyword %s", token.string);
   continue;
  }
  if ( !key->func(item, handle) ) {
   PC_SourceError(handle, "couldn't parse menu item keyword %s", token.string);
   return qfalse;
  }
 }
 return qfalse;
}
