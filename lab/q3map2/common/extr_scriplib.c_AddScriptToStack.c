
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int line; void* buffer; void* end_p; void* script_p; int filename; } ;


 int Error (char*) ;
 int ExpandPath (char const*) ;
 size_t MAX_INCLUDES ;
 int Sys_Printf (char*,int ,...) ;
 TYPE_1__* script ;
 TYPE_1__* scriptstack ;
 int strcpy (int ,int ) ;
 int vfsLoadFile (int ,void**,int) ;

void AddScriptToStack( const char *filename, int index ){
 int size;
 void* buffer;

 script++;
 if ( script == &scriptstack[MAX_INCLUDES] ) {
  Error( "script file exceeded MAX_INCLUDES" );
 }
 strcpy( script->filename, ExpandPath( filename ) );

 size = vfsLoadFile( script->filename, &buffer, index );

 if ( size == -1 ) {
  Sys_Printf( "Script file %s was not found\n", script->filename );
  script--;
 }
 else
 {
  if ( index > 0 ) {
   Sys_Printf( "entering %s (%d)\n", script->filename, index + 1 );
  }
  else{
   Sys_Printf( "entering %s\n", script->filename );
  }

  script->buffer = buffer;
  script->line = 1;
  script->script_p = script->buffer;
  script->end_p = script->buffer + size;
 }
}
