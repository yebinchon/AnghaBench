
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buffer; int line; char* script_p; char* end_p; int filename; } ;


 int Error (char*) ;
 size_t MAX_INCLUDES ;
 void* endofscript ;
 void* qfalse ;
 TYPE_1__* script ;
 TYPE_1__* scriptstack ;
 int strcpy (int ,char*) ;
 void* tokenready ;

void ParseFromMemory( char *buffer, int size ){
 script = scriptstack;
 script++;
 if ( script == &scriptstack[MAX_INCLUDES] ) {
  Error( "script file exceeded MAX_INCLUDES" );
 }
 strcpy( script->filename, "memory buffer" );

 script->buffer = buffer;
 script->line = 1;
 script->script_p = script->buffer;
 script->end_p = script->buffer + size;

 endofscript = qfalse;
 tokenready = qfalse;
}
