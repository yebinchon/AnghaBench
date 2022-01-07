
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int message ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {int curvalue; TYPE_1__ generic; } ;
typedef TYPE_2__ menulist_s ;
struct TYPE_6__ {int selectedBot; scalar_t__ gametype; int * botNames; } ;


 int Com_sprintf (char*,int,int ,int ) ;
 int EXEC_APPEND ;
 scalar_t__ GT_CTF ;
 int ID_LIST_BOTS ;
 int ID_LIST_CTF_ORDERS ;
 int ID_LIST_TEAM_ORDERS ;
 int QM_ACTIVATED ;
 int UI_PopMenu () ;
 int UI_TeamOrdersMenu_SetList (int) ;
 int * ctfMessages ;
 int * teamMessages ;
 TYPE_3__ teamOrdersMenuInfo ;
 int trap_Cmd_ExecuteText (int ,int ) ;
 int va (char*,char*) ;

__attribute__((used)) static void UI_TeamOrdersMenu_ListEvent( void *ptr, int event ) {
 int id;
 int selection;
 char message[256];

 if (event != QM_ACTIVATED)
  return;

 id = ((menulist_s *)ptr)->generic.id;
 selection = ((menulist_s *)ptr)->curvalue;

 if( id == ID_LIST_BOTS ) {
  teamOrdersMenuInfo.selectedBot = selection;
  if( teamOrdersMenuInfo.gametype == GT_CTF ) {
   UI_TeamOrdersMenu_SetList( ID_LIST_CTF_ORDERS );
  }
  else {
   UI_TeamOrdersMenu_SetList( ID_LIST_TEAM_ORDERS );
  }
  return;
 }

 if( id == ID_LIST_CTF_ORDERS ) {
  Com_sprintf( message, sizeof(message), ctfMessages[selection], teamOrdersMenuInfo.botNames[teamOrdersMenuInfo.selectedBot] );
 }
 else {
  Com_sprintf( message, sizeof(message), teamMessages[selection], teamOrdersMenuInfo.botNames[teamOrdersMenuInfo.selectedBot] );
 }

 trap_Cmd_ExecuteText( EXEC_APPEND, va( "say_team \"%s\"\n", message ) );
 UI_PopMenu();
}
