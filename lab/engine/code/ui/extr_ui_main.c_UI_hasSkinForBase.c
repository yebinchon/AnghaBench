
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test ;
typedef int qboolean ;


 int Com_sprintf (char*,int,char*,char const*,char const*) ;
 int FS_READ ;
 int MAX_QPATH ;
 int qfalse ;
 int qtrue ;
 scalar_t__ trap_FS_FOpenFile (char*,int *,int ) ;

qboolean UI_hasSkinForBase(const char *base, const char *team) {
 char test[MAX_QPATH];

 Com_sprintf( test, sizeof( test ), "models/players/%s/%s/lower_default.skin", base, team );

 if (trap_FS_FOpenFile(test, ((void*)0), FS_READ)) {
  return qtrue;
 }
 Com_sprintf( test, sizeof( test ), "models/players/characters/%s/%s/lower_default.skin", base, team );

 if (trap_FS_FOpenFile(test, ((void*)0), FS_READ)) {
  return qtrue;
 }
 return qfalse;
}
