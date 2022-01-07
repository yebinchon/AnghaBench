
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Com_SkipTokens (char*,int,char*) ;
 int Field_CompleteCommand (char*,int ,int ) ;
 int Field_CompleteKeyname () ;
 int qtrue ;

__attribute__((used)) static void Key_CompleteBind( char *args, int argNum )
{
 char *p;

 if( argNum == 2 )
 {

  p = Com_SkipTokens( args, 1, " " );

  if( p > args )
   Field_CompleteKeyname( );
 }
 else if( argNum >= 3 )
 {

  p = Com_SkipTokens( args, 2, " " );

  if( p > args )
   Field_CompleteCommand( p, qtrue, qtrue );
 }
}
