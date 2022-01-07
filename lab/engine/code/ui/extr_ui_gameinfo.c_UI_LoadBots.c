
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* string; } ;
typedef TYPE_1__ vmCvar_t ;


 int CVAR_INIT ;
 int CVAR_ROM ;
 int UI_LoadBotsFromFile (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int trap_Cvar_Register (TYPE_1__*,char*,char*,int) ;
 int trap_FS_GetFileList (char*,char*,char*,int) ;
 int trap_Print (int ) ;
 scalar_t__ ui_numBots ;
 int va (char*,scalar_t__) ;

void UI_LoadBots( void ) {
 vmCvar_t botsFile;
 int numdirs;
 char filename[128];
 char dirlist[1024];
 char* dirptr;
 int i;
 int dirlen;

 ui_numBots = 0;

 trap_Cvar_Register( &botsFile, "g_botsFile", "", CVAR_INIT|CVAR_ROM );
 if( *botsFile.string ) {
  UI_LoadBotsFromFile(botsFile.string);
 }
 else {
  UI_LoadBotsFromFile("scripts/bots.txt");
 }


 numdirs = trap_FS_GetFileList("scripts", ".bot", dirlist, 1024 );
 dirptr = dirlist;
 for (i = 0; i < numdirs; i++, dirptr += dirlen+1) {
  dirlen = strlen(dirptr);
  strcpy(filename, "scripts/");
  strcat(filename, dirptr);
  UI_LoadBotsFromFile(filename);
 }
 trap_Print( va( "%i bots parsed\n", ui_numBots ) );
}
