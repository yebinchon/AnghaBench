
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int model ;
typedef int funname ;
typedef int aifile ;


 int Info_ValueForKey (int ,char*) ;
 int MAX_TOKEN_CHARS ;
 int Q_strncpyz (char*,int ,int) ;
 int * g_botInfos ;
 int g_numBots ;
 int strcpy (char*,char*) ;
 int trap_Print (char*) ;
 char* va (char*,char*,char*,char*,char*) ;

void Svcmd_BotList_f( void ) {
 int i;
 char name[MAX_TOKEN_CHARS];
 char funname[MAX_TOKEN_CHARS];
 char model[MAX_TOKEN_CHARS];
 char aifile[MAX_TOKEN_CHARS];

 trap_Print("^1name             model            aifile              funname\n");
 for (i = 0; i < g_numBots; i++) {
  Q_strncpyz(name, Info_ValueForKey( g_botInfos[i], "name" ), sizeof( name ));
  if ( !*name ) {
   strcpy(name, "UnnamedPlayer");
  }
  Q_strncpyz(funname, Info_ValueForKey( g_botInfos[i], "funname" ), sizeof( funname ));
  if ( !*funname ) {
   strcpy(funname, "");
  }
  Q_strncpyz(model, Info_ValueForKey( g_botInfos[i], "model" ), sizeof( model ));
  if ( !*model ) {
   strcpy(model, "visor/default");
  }
  Q_strncpyz(aifile, Info_ValueForKey( g_botInfos[i], "aifile"), sizeof( aifile ));
  if (!*aifile ) {
   strcpy(aifile, "bots/default_c.c");
  }
  trap_Print(va("%-16s %-16s %-20s %-20s\n", name, model, aifile, funname));
 }
}
