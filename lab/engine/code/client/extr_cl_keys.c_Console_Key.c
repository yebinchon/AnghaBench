
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int temp ;
struct TYPE_12__ {scalar_t__ state; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {char* buffer; void* widthInChars; int cursor; } ;
struct TYPE_9__ {scalar_t__ down; } ;


 scalar_t__ CA_ACTIVE ;
 scalar_t__ CA_DISCONNECTED ;
 int CL_SaveConsoleHistory () ;
 size_t COMMAND_HISTORY ;
 int Cbuf_AddText (char*) ;
 int Com_Printf (char*,char*) ;
 int Com_sprintf (char*,int,char*,char*) ;
 int Con_Bottom () ;
 int Con_PageDown () ;
 int Con_PageUp () ;
 int Con_Top () ;
 int Field_AutoComplete (TYPE_2__*) ;
 int Field_Clear (TYPE_2__*) ;
 int Field_KeyDownEvent (TYPE_2__*,int) ;
 size_t K_CTRL ;
 int K_DOWNARROW ;
 int K_END ;
 int K_ENTER ;
 int K_HOME ;
 int K_KP_DOWNARROW ;
 int K_KP_ENTER ;
 int K_KP_UPARROW ;
 int K_MWHEELDOWN ;
 int K_MWHEELUP ;
 int K_PGDN ;
 int K_PGUP ;
 size_t K_SHIFT ;
 int K_TAB ;
 int K_UPARROW ;
 int MAX_EDIT_LINE ;
 int Q_strncpyz (char*,char*,int) ;
 int SCR_UpdateScreen () ;
 TYPE_5__ clc ;
 TYPE_4__* con_autochat ;
 TYPE_2__ g_consoleField ;
 void* g_console_field_width ;
 TYPE_2__* historyEditLines ;
 size_t historyLine ;
 TYPE_1__* keys ;
 size_t nextHistoryLine ;
 char tolower (int) ;

void Console_Key (int key) {

 if ( key == 'l' && keys[K_CTRL].down ) {
  Cbuf_AddText ("clear\n");
  return;
 }


 if ( key == K_ENTER || key == K_KP_ENTER ) {

  if ( clc.state != CA_ACTIVE && con_autochat->integer &&
    g_consoleField.buffer[0] &&
    g_consoleField.buffer[0] != '\\' &&
    g_consoleField.buffer[0] != '/' ) {
   char temp[MAX_EDIT_LINE-1];

   Q_strncpyz( temp, g_consoleField.buffer, sizeof( temp ) );
   Com_sprintf( g_consoleField.buffer, sizeof( g_consoleField.buffer ), "\\%s", temp );
   g_consoleField.cursor++;
  }

  Com_Printf ( "]%s\n", g_consoleField.buffer );


  if ( g_consoleField.buffer[0] == '\\' || g_consoleField.buffer[0] == '/' ) {
   Cbuf_AddText( g_consoleField.buffer+1 );
   Cbuf_AddText ("\n");
  } else {

   if ( !g_consoleField.buffer[0] ) {
    return;
   } else {
    if ( con_autochat->integer ) {
     Cbuf_AddText ("cmd say ");
    }

    Cbuf_AddText( g_consoleField.buffer );
    Cbuf_AddText ("\n");
   }
  }


  historyEditLines[nextHistoryLine % COMMAND_HISTORY] = g_consoleField;
  nextHistoryLine++;
  historyLine = nextHistoryLine;

  Field_Clear( &g_consoleField );

  g_consoleField.widthInChars = g_console_field_width;

  CL_SaveConsoleHistory( );

  if ( clc.state == CA_DISCONNECTED ) {
   SCR_UpdateScreen ();
  }
  return;
 }



 if (key == K_TAB) {
  Field_AutoComplete(&g_consoleField);
  return;
 }



 if ( (key == K_MWHEELUP && keys[K_SHIFT].down) || ( key == K_UPARROW ) || ( key == K_KP_UPARROW ) ||
   ( ( tolower(key) == 'p' ) && keys[K_CTRL].down ) ) {
  if ( nextHistoryLine - historyLine < COMMAND_HISTORY
   && historyLine > 0 ) {
   historyLine--;
  }
  g_consoleField = historyEditLines[ historyLine % COMMAND_HISTORY ];
  return;
 }

 if ( (key == K_MWHEELDOWN && keys[K_SHIFT].down) || ( key == K_DOWNARROW ) || ( key == K_KP_DOWNARROW ) ||
   ( ( tolower(key) == 'n' ) && keys[K_CTRL].down ) ) {
  historyLine++;
  if (historyLine >= nextHistoryLine) {
   historyLine = nextHistoryLine;
   Field_Clear( &g_consoleField );
   g_consoleField.widthInChars = g_console_field_width;
   return;
  }
  g_consoleField = historyEditLines[ historyLine % COMMAND_HISTORY ];
  return;
 }


 if ( key == K_PGUP ) {
  Con_PageUp();
  return;
 }

 if ( key == K_PGDN) {
  Con_PageDown();
  return;
 }

 if ( key == K_MWHEELUP) {
  Con_PageUp();
  if(keys[K_CTRL].down) {
   Con_PageUp();
   Con_PageUp();
  }
  return;
 }

 if ( key == K_MWHEELDOWN) {
  Con_PageDown();
  if(keys[K_CTRL].down) {
   Con_PageDown();
   Con_PageDown();
  }
  return;
 }


 if ( key == K_HOME && keys[K_CTRL].down ) {
  Con_Top();
  return;
 }


 if ( key == K_END && keys[K_CTRL].down ) {
  Con_Bottom();
  return;
 }


 Field_KeyDownEvent( &g_consoleField, key );
}
