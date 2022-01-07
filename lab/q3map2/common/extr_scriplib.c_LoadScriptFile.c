
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AddScriptToStack (char const*,int) ;
 void* endofscript ;
 void* qfalse ;
 int script ;
 int scriptstack ;
 void* tokenready ;

void LoadScriptFile( const char *filename, int index ){
 script = scriptstack;
 AddScriptToStack( filename, index );

 endofscript = qfalse;
 tokenready = qfalse;
}
