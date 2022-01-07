
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {char* buffer; int cursor; } ;
struct TYPE_3__ {scalar_t__ integer; } ;


 int Cmd_Argc () ;
 void* Cmd_Argv (int) ;
 int Cmd_CommandCompletion (int ) ;
 int Cmd_CompleteArgument (char const*,char*,int) ;
 int Cmd_TokenizeStringIgnoreQuotes (char*) ;
 char* Com_SkipCharset (char*,char*) ;
 int Cvar_CommandCompletion (int ) ;
 int Field_Complete () ;
 char* Field_FindFirstSeparator (char*) ;
 int FindMatches ;
 int PrintCvarMatches ;
 int PrintMatches ;
 TYPE_2__* completionField ;
 char* completionString ;
 TYPE_1__* con_autochat ;
 scalar_t__ matchCount ;
 int memmove (char*,char*,scalar_t__) ;
 scalar_t__ qtrue ;
 scalar_t__* shortestMatch ;
 scalar_t__ strlen (char*) ;

void Field_CompleteCommand( char *cmd,
  qboolean doCommands, qboolean doCvars )
{
 int completionArgument = 0;


 cmd = Com_SkipCharset( cmd, " \"" );

 Cmd_TokenizeStringIgnoreQuotes( cmd );
 completionArgument = Cmd_Argc( );


 if( *( cmd + strlen( cmd ) - 1 ) == ' ' )
 {
  completionString = "";
  completionArgument++;
 }
 else
  completionString = Cmd_Argv( completionArgument - 1 );



 if( con_autochat->integer && completionField->buffer[ 0 ] &&
   completionField->buffer[ 0 ] != '\\' )
 {
  if( completionField->buffer[ 0 ] != '/' )
  {

   if( strlen( completionField->buffer ) + 1 >=
    sizeof( completionField->buffer ) )
    return;

   memmove( &completionField->buffer[ 1 ],
    &completionField->buffer[ 0 ],
    strlen( completionField->buffer ) + 1 );
   completionField->cursor++;
  }

  completionField->buffer[ 0 ] = '\\';
 }


 if( completionArgument > 1 )
 {
  const char *baseCmd = Cmd_Argv( 0 );
  char *p;



  if( baseCmd[ 0 ] == '\\' || baseCmd[ 0 ] == '/' )
   baseCmd++;


  if( ( p = Field_FindFirstSeparator( cmd ) ) )
   Field_CompleteCommand( p + 1, qtrue, qtrue );
  else
   Cmd_CompleteArgument( baseCmd, cmd, completionArgument );
 }
 else
 {
  if( completionString[0] == '\\' || completionString[0] == '/' )
   completionString++;

  matchCount = 0;
  shortestMatch[ 0 ] = 0;

  if( strlen( completionString ) == 0 )
   return;

  if( doCommands )
   Cmd_CommandCompletion( FindMatches );

  if( doCvars )
   Cvar_CommandCompletion( FindMatches );

  if( !Field_Complete( ) )
  {

   if( doCommands )
    Cmd_CommandCompletion( PrintMatches );

   if( doCvars )
    Cvar_CommandCompletion( PrintCvarMatches );
  }
 }
}
