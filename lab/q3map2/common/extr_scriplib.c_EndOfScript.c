
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int filename; int line; int * buffer; } ;


 int Error (char*,int ) ;
 int GetToken (int ) ;
 int SYS_WRN ;
 int Sys_FPrintf (int ,char*) ;
 int Sys_Printf (char*,int ) ;
 int endofscript ;
 int free (int *) ;
 int qfalse ;
 int qtrue ;
 TYPE_1__* script ;
 int scriptline ;
 TYPE_1__* scriptstack ;
 int strcmp (int ,char*) ;

qboolean EndOfScript( qboolean crossline ){
 if ( !crossline ) {
  Error( "Line %i is incomplete\n",scriptline );
 }

 if ( !strcmp( script->filename, "memory buffer" ) ) {
  endofscript = qtrue;
  return qfalse;
 }

 if ( script->buffer == ((void*)0) ) {
  Sys_FPrintf( SYS_WRN, "WARNING: Attempt to free already freed script buffer\n" );
 }
 else{
  free( script->buffer );
 }
 script->buffer = ((void*)0);
 if ( script == scriptstack + 1 ) {
  endofscript = qtrue;
  return qfalse;
 }
 script--;
 scriptline = script->line;
 Sys_Printf( "returning to %s\n", script->filename );
 return GetToken( crossline );
}
