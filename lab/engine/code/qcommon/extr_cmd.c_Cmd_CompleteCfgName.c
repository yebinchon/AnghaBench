
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Field_CompleteFilename (char*,char*,int ,int ) ;
 int qfalse ;
 int qtrue ;

void Cmd_CompleteCfgName( char *args, int argNum ) {
 if( argNum == 2 ) {
  Field_CompleteFilename( "", "cfg", qfalse, qtrue );
 }
}
