
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int writebuf ;
struct TYPE_4__ {int subnet; int ip; int isexception; } ;
typedef TYPE_1__ serverBan_t ;
typedef int filepath ;
typedef int fileHandle_t ;
struct TYPE_5__ {int * string; } ;


 int Com_sprintf (char*,int,char*,int ,int ,...) ;
 int FS_FCloseFile (int ) ;
 int FS_GetCurrentGameDir () ;
 int FS_SV_FOpenFileWrite (char*) ;
 int FS_Write (char*,int ,int ) ;
 int MAX_QPATH ;
 int NET_AdrToString (int ) ;
 TYPE_1__* serverBans ;
 int serverBansCount ;
 int strlen (char*) ;
 TYPE_2__* sv_banFile ;

__attribute__((used)) static void SV_WriteBans(void)
{
 int index;
 fileHandle_t writeto;
 char filepath[MAX_QPATH];

 if(!sv_banFile->string || !*sv_banFile->string)
  return;

 Com_sprintf(filepath, sizeof(filepath), "%s/%s", FS_GetCurrentGameDir(), sv_banFile->string);

 if((writeto = FS_SV_FOpenFileWrite(filepath)))
 {
  char writebuf[128];
  serverBan_t *curban;

  for(index = 0; index < serverBansCount; index++)
  {
   curban = &serverBans[index];

   Com_sprintf(writebuf, sizeof(writebuf), "%d %s %d\n",
        curban->isexception, NET_AdrToString(curban->ip), curban->subnet);
   FS_Write(writebuf, strlen(writebuf), writeto);
  }

  FS_FCloseFile(writeto);
 }
}
