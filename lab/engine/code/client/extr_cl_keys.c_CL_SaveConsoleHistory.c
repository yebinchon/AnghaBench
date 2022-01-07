
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fileHandle_t ;
struct TYPE_2__ {char* buffer; int scroll; int cursor; } ;


 int COMMAND_HISTORY ;
 int CONSOLE_HISTORY_FILE ;
 int Com_Printf (char*,int ) ;
 int FS_FCloseFile (int ) ;
 int FS_FOpenFileWrite (int ) ;
 int FS_Write (char*,int,int ) ;
 int MAX_CONSOLE_SAVE_BUFFER ;
 int Q_strcat (char*,int,int ) ;
 char* consoleSaveBuffer ;
 int consoleSaveBufferSize ;
 TYPE_1__* historyEditLines ;
 int nextHistoryLine ;
 int strlen (char*) ;
 int va (char*,int ,int ,int,char*) ;

void CL_SaveConsoleHistory( void )
{
 int i;
 int lineLength, saveBufferLength, additionalLength;
 fileHandle_t f;

 consoleSaveBuffer[ 0 ] = '\0';

 i = ( nextHistoryLine - 1 ) % COMMAND_HISTORY;
 do
 {
  if( historyEditLines[ i ].buffer[ 0 ] )
  {
   lineLength = strlen( historyEditLines[ i ].buffer );
   saveBufferLength = strlen( consoleSaveBuffer );


   additionalLength = lineLength + strlen( "999 999 999  " );

   if( saveBufferLength + additionalLength < MAX_CONSOLE_SAVE_BUFFER )
   {
    Q_strcat( consoleSaveBuffer, MAX_CONSOLE_SAVE_BUFFER,
      va( "%d %d %d %s ",
      historyEditLines[ i ].cursor,
      historyEditLines[ i ].scroll,
      lineLength,
      historyEditLines[ i ].buffer ) );
   }
   else
    break;
  }
  i = ( i - 1 + COMMAND_HISTORY ) % COMMAND_HISTORY;
 }
 while( i != ( nextHistoryLine - 1 ) % COMMAND_HISTORY );

 consoleSaveBufferSize = strlen( consoleSaveBuffer );

 f = FS_FOpenFileWrite( CONSOLE_HISTORY_FILE );
 if( !f )
 {
  Com_Printf( "Couldn't write %s.\n", CONSOLE_HISTORY_FILE );
  return;
 }

 if( FS_Write( consoleSaveBuffer, consoleSaveBufferSize, f ) < consoleSaveBufferSize )
  Com_Printf( "Couldn't write %s.\n", CONSOLE_HISTORY_FILE );

 FS_FCloseFile( f );
}
