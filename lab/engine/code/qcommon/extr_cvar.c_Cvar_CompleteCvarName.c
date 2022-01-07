
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Com_SkipTokens (char*,int,char*) ;
 int Field_CompleteCommand (char*,int ,int ) ;
 int qfalse ;
 int qtrue ;

void Cvar_CompleteCvarName( char *args, int argNum )
{
 if( argNum == 2 )
 {

  char *p = Com_SkipTokens( args, 1, " " );

  if( p > args )
   Field_CompleteCommand( p, qfalse, qtrue );
 }
}
