
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int client_t ;
struct TYPE_2__ {int integer; } ;


 int Cmd_Argc () ;
 char* Cmd_ArgsFrom (int) ;
 int Com_Printf (char*,...) ;
 int * SV_GetPlayerByNum () ;
 int SV_SendServerCommand (int *,char*,char*) ;
 TYPE_1__* com_sv_running ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void SV_ConTell_f(void) {
 char *p;
 char text[1024];
 client_t *cl;


 if ( !com_sv_running->integer ) {
  Com_Printf( "Server is not running.\n" );
  return;
 }

 if ( Cmd_Argc() < 3 ) {
  Com_Printf ("Usage: tell <client number> <text>\n");
  return;
 }

 cl = SV_GetPlayerByNum();
 if ( !cl ) {
  return;
 }

 strcpy (text, "console_tell: ");
 p = Cmd_ArgsFrom(2);

 if ( *p == '"' ) {
  p++;
  p[strlen(p)-1] = 0;
 }

 strcat(text, p);

 Com_Printf("%s\n", text);
 SV_SendServerCommand(cl, "chat \"%s\"", text);
}
