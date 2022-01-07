
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Com_SkipTokens (char*,int,char*) ;
 int Field_CompleteKeyname () ;

__attribute__((used)) static void Key_CompleteUnbind( char *args, int argNum )
{
 if( argNum == 2 )
 {

  char *p = Com_SkipTokens( args, 1, " " );

  if( p > args )
   Field_CompleteKeyname( );
 }
}
