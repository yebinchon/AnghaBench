
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int filepath ;
typedef int fileHandle_t ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_7__ {int integer; } ;
struct TYPE_6__ {int isexception; int subnet; TYPE_4__ ip; } ;
struct TYPE_5__ {int * string; } ;


 int Com_sprintf (char*,int,char*,int ,int *) ;
 int FS_FCloseFile (int ) ;
 int FS_GetCurrentGameDir () ;
 int FS_Read (char*,int,int ) ;
 int FS_SV_FOpenFileRead (char*,int *) ;
 int MAX_QPATH ;
 scalar_t__ NA_IP ;
 scalar_t__ NA_IP6 ;
 int NA_UNSPEC ;
 scalar_t__ NET_StringToAdr (char*,TYPE_4__*,int ) ;
 int SERVER_MAXBANS ;
 int Z_Free (char*) ;
 char* Z_Malloc (int) ;
 int atoi (char*) ;
 TYPE_3__* com_sv_running ;
 TYPE_2__* serverBans ;
 int serverBansCount ;
 TYPE_1__* sv_banFile ;

__attribute__((used)) static void SV_RehashBans_f(void)
{
 int index, filelen;
 fileHandle_t readfrom;
 char *textbuf, *curpos, *maskpos, *newlinepos, *endpos;
 char filepath[MAX_QPATH];


 if ( !com_sv_running->integer ) {
  return;
 }

 serverBansCount = 0;

 if(!sv_banFile->string || !*sv_banFile->string)
  return;

 Com_sprintf(filepath, sizeof(filepath), "%s/%s", FS_GetCurrentGameDir(), sv_banFile->string);

 if((filelen = FS_SV_FOpenFileRead(filepath, &readfrom)) >= 0)
 {
  if(filelen < 2)
  {

   FS_FCloseFile(readfrom);
   return;
  }

  curpos = textbuf = Z_Malloc(filelen);

  filelen = FS_Read(textbuf, filelen, readfrom);
  FS_FCloseFile(readfrom);

  endpos = textbuf + filelen;

  for(index = 0; index < SERVER_MAXBANS && curpos + 2 < endpos; index++)
  {

   for(maskpos = curpos + 2; maskpos < endpos && *maskpos != ' '; maskpos++);

   if(maskpos + 1 >= endpos)
    break;

   *maskpos = '\0';
   maskpos++;


   for(newlinepos = maskpos; newlinepos < endpos && *newlinepos != '\n'; newlinepos++);

   if(newlinepos >= endpos)
    break;

   *newlinepos = '\0';

   if(NET_StringToAdr(curpos + 2, &serverBans[index].ip, NA_UNSPEC))
   {
    serverBans[index].isexception = (curpos[0] != '0');
    serverBans[index].subnet = atoi(maskpos);

    if(serverBans[index].ip.type == NA_IP &&
       (serverBans[index].subnet < 1 || serverBans[index].subnet > 32))
    {
     serverBans[index].subnet = 32;
    }
    else if(serverBans[index].ip.type == NA_IP6 &&
     (serverBans[index].subnet < 1 || serverBans[index].subnet > 128))
    {
     serverBans[index].subnet = 128;
    }
   }

   curpos = newlinepos + 1;
  }

  serverBansCount = index;

  Z_Free(textbuf);
 }
}
