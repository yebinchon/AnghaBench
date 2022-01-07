
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int FS_FilenameCompare (char*,int ) ;
 int NUM_ID_PAKS ;
 int qfalse ;
 int qtrue ;
 int va (char*,char*,int) ;

qboolean FS_idPak(char *pak, char *base, int numPaks)
{
 int i;

 for (i = 0; i < NUM_ID_PAKS; i++) {
  if ( !FS_FilenameCompare(pak, va("%s/pak%d", base, i)) ) {
   break;
  }
 }
 if (i < numPaks) {
  return qtrue;
 }
 return qfalse;
}
