
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int postGameInfo_t ;
typedef int gameList ;
typedef int fileHandle_t ;


 int FS_WRITE ;
 int UI_SetBestScores (int*,int ) ;
 int memset (int*,int ,int) ;
 int qfalse ;
 int strlen (char*) ;
 int trap_FS_FCloseFile (int ) ;
 scalar_t__ trap_FS_FOpenFile (int ,int *,int ) ;
 int trap_FS_GetFileList (char*,char*,char*,int) ;
 int trap_FS_Write (int*,int,int ) ;
 int va (char*,char*) ;

void UI_ClearScores(void) {
 char gameList[4096];
 char *gameFile;
 int i, len, count, size;
 fileHandle_t f;
 postGameInfo_t newInfo;

 count = trap_FS_GetFileList( "games", "game", gameList, sizeof(gameList) );

 size = sizeof(postGameInfo_t);
 memset(&newInfo, 0, size);

 if (count > 0) {
  gameFile = gameList;
  for ( i = 0; i < count; i++ ) {
   len = strlen(gameFile);
   if (trap_FS_FOpenFile(va("games/%s",gameFile), &f, FS_WRITE) >= 0) {
    trap_FS_Write(&size, sizeof(int), f);
    trap_FS_Write(&newInfo, size, f);
    trap_FS_FCloseFile(f);
   }
   gameFile += len + 1;
  }
 }

 UI_SetBestScores(&newInfo, qfalse);

}
