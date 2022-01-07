
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int strippedName ;
struct TYPE_7__ {int timeOffset; struct TYPE_7__* remappedShader; int name; struct TYPE_7__* next; } ;
typedef TYPE_1__ shader_t ;
typedef int qhandle_t ;
struct TYPE_9__ {int (* Printf ) (int ,char*,char const*) ;} ;
struct TYPE_8__ {TYPE_1__* defaultShader; } ;


 int COM_StripExtension (char const*,char*,int) ;
 int FILE_HASH_SIZE ;
 int MAX_QPATH ;
 int PRINT_WARNING ;
 scalar_t__ Q_stricmp (int ,char*) ;
 int RE_RegisterShaderLightMap (char const*,int ) ;
 TYPE_1__* R_FindShaderByName (char const*) ;
 TYPE_1__* R_GetShaderByHandle (int ) ;
 int atof (char const*) ;
 int generateHashValue (char*,int ) ;
 TYPE_1__** hashTable ;
 TYPE_3__ ri ;
 int stub1 (int ,char*,char const*) ;
 int stub2 (int ,char*,char const*) ;
 TYPE_2__ tr ;

void R_RemapShader(const char *shaderName, const char *newShaderName, const char *timeOffset) {
 char strippedName[MAX_QPATH];
 int hash;
 shader_t *sh, *sh2;
 qhandle_t h;

 sh = R_FindShaderByName( shaderName );
 if (sh == ((void*)0) || sh == tr.defaultShader) {
  h = RE_RegisterShaderLightMap(shaderName, 0);
  sh = R_GetShaderByHandle(h);
 }
 if (sh == ((void*)0) || sh == tr.defaultShader) {
  ri.Printf( PRINT_WARNING, "WARNING: R_RemapShader: shader %s not found\n", shaderName );
  return;
 }

 sh2 = R_FindShaderByName( newShaderName );
 if (sh2 == ((void*)0) || sh2 == tr.defaultShader) {
  h = RE_RegisterShaderLightMap(newShaderName, 0);
  sh2 = R_GetShaderByHandle(h);
 }

 if (sh2 == ((void*)0) || sh2 == tr.defaultShader) {
  ri.Printf( PRINT_WARNING, "WARNING: R_RemapShader: new shader %s not found\n", newShaderName );
  return;
 }



 COM_StripExtension(shaderName, strippedName, sizeof(strippedName));
 hash = generateHashValue(strippedName, FILE_HASH_SIZE);
 for (sh = hashTable[hash]; sh; sh = sh->next) {
  if (Q_stricmp(sh->name, strippedName) == 0) {
   if (sh != sh2) {
    sh->remappedShader = sh2;
   } else {
    sh->remappedShader = ((void*)0);
   }
  }
 }
 if (timeOffset) {
  sh2->timeOffset = atof(timeOffset);
 }
}
