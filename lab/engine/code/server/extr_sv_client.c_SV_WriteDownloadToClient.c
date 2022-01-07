
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
typedef int pakbuf ;
typedef int msg_t ;
typedef int errorMessage ;
struct TYPE_6__ {int downloadSize; size_t downloadCurrentBlock; size_t downloadClientBlock; size_t downloadXmitBlock; int downloadCount; int* downloadBlockSize; int downloadSendTime; scalar_t__* downloadBlocks; void* downloadEOF; scalar_t__ download; scalar_t__* downloadName; } ;
typedef TYPE_1__ client_t ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {scalar_t__ integer; } ;
struct TYPE_7__ {int time; TYPE_1__* clients; } ;


 int BASEGAME ;
 int BASETA ;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Cmd_TokenizeStringIgnoreQuotes (char const*) ;
 int Com_DPrintf (char*,int,int) ;
 int Com_Printf (char*,int,scalar_t__*) ;
 int Com_sprintf (char*,int,char*,scalar_t__*) ;
 int DLF_ENABLE ;
 int DLF_NO_UDP ;
 int FS_FCloseFile (scalar_t__) ;
 int FS_FilenameCompare (int ,char*) ;
 int FS_Read (scalar_t__,int ,scalar_t__) ;
 char* FS_ReferencedPakNames () ;
 int FS_SV_FOpenFileRead (scalar_t__*,scalar_t__*) ;
 int FS_idPak (char*,int ,int ) ;
 int MAX_DOWNLOAD_BLKSIZE ;
 size_t MAX_DOWNLOAD_WINDOW ;
 int MAX_QPATH ;
 int MSG_WriteByte (int *,int ) ;
 int MSG_WriteData (int *,scalar_t__,int) ;
 int MSG_WriteLong (int *,int) ;
 int MSG_WriteShort (int *,int) ;
 int MSG_WriteString (int *,char*) ;
 int NUM_ID_PAKS ;
 int NUM_TA_PAKS ;
 int Q_stricmp (char*,char*) ;
 scalar_t__ Z_Malloc (int ) ;
 void* qfalse ;
 void* qtrue ;
 char* strrchr (char*,char) ;
 TYPE_4__* sv_allowDownload ;
 TYPE_3__* sv_pure ;
 int svc_download ;
 TYPE_2__ svs ;

int SV_WriteDownloadToClient(client_t *cl, msg_t *msg)
{
 int curindex;
 int unreferenced = 1;
 char errorMessage[1024];
 char pakbuf[MAX_QPATH], *pakptr;
 int numRefPaks;

 if (!*cl->downloadName)
  return 0;

 if(!cl->download)
 {
  qboolean idPack = qfalse;

  qboolean missionPack = qfalse;



  Com_sprintf(pakbuf, sizeof(pakbuf), "%s", cl->downloadName);
  pakptr = strrchr(pakbuf, '.');

  if(pakptr)
  {
   *pakptr = '\0';


   if(!Q_stricmp(pakptr + 1, "pk3"))
   {
    const char *referencedPaks = FS_ReferencedPakNames();



    Cmd_TokenizeStringIgnoreQuotes(referencedPaks);
    numRefPaks = Cmd_Argc();

    for(curindex = 0; curindex < numRefPaks; curindex++)
    {
     if(!FS_FilenameCompare(Cmd_Argv(curindex), pakbuf))
     {
      unreferenced = 0;




      missionPack = FS_idPak(pakbuf, BASETA, NUM_TA_PAKS);
      idPack = missionPack;

      idPack = idPack || FS_idPak(pakbuf, BASEGAME, NUM_ID_PAKS);

      break;
     }
    }
   }
  }

  cl->download = 0;


  if ( !(sv_allowDownload->integer & DLF_ENABLE) ||
   (sv_allowDownload->integer & DLF_NO_UDP) ||
   idPack || unreferenced ||
   ( cl->downloadSize = FS_SV_FOpenFileRead( cl->downloadName, &cl->download ) ) < 0 ) {

   if(unreferenced)
   {
    Com_Printf("clientDownload: %d : \"%s\" is not referenced and cannot be downloaded.\n", (int) (cl - svs.clients), cl->downloadName);
    Com_sprintf(errorMessage, sizeof(errorMessage), "File \"%s\" is not referenced and cannot be downloaded.", cl->downloadName);
   }
   else if (idPack) {
    Com_Printf("clientDownload: %d : \"%s\" cannot download id pk3 files\n", (int) (cl - svs.clients), cl->downloadName);

    if(missionPack)
    {
     Com_sprintf(errorMessage, sizeof(errorMessage), "Cannot autodownload Team Arena file \"%s\"\n"
         "The Team Arena mission pack can be found in your local game store.", cl->downloadName);
    }
    else

    {
     Com_sprintf(errorMessage, sizeof(errorMessage), "Cannot autodownload id pk3 file \"%s\"", cl->downloadName);
    }
   }
   else if ( !(sv_allowDownload->integer & DLF_ENABLE) ||
    (sv_allowDownload->integer & DLF_NO_UDP) ) {

    Com_Printf("clientDownload: %d : \"%s\" download disabled\n", (int) (cl - svs.clients), cl->downloadName);
    if (sv_pure->integer) {
     Com_sprintf(errorMessage, sizeof(errorMessage), "Could not download \"%s\" because autodownloading is disabled on the server.\n\n"
          "You will need to get this file elsewhere before you "
          "can connect to this pure server.\n", cl->downloadName);
    } else {
     Com_sprintf(errorMessage, sizeof(errorMessage), "Could not download \"%s\" because autodownloading is disabled on the server.\n\n"
                    "The server you are connecting to is not a pure server, "
                    "set autodownload to No in your settings and you might be "
                    "able to join the game anyway.\n", cl->downloadName);
    }
   } else {


    Com_Printf("clientDownload: %d : \"%s\" file not found on server\n", (int) (cl - svs.clients), cl->downloadName);
    Com_sprintf(errorMessage, sizeof(errorMessage), "File \"%s\" not found on server for autodownloading.\n", cl->downloadName);
   }
   MSG_WriteByte( msg, svc_download );
   MSG_WriteShort( msg, 0 );
   MSG_WriteLong( msg, -1 );
   MSG_WriteString( msg, errorMessage );

   *cl->downloadName = 0;

   if(cl->download)
    FS_FCloseFile(cl->download);

   return 1;
  }

  Com_Printf( "clientDownload: %d : beginning \"%s\"\n", (int) (cl - svs.clients), cl->downloadName );


  cl->downloadCurrentBlock = cl->downloadClientBlock = cl->downloadXmitBlock = 0;
  cl->downloadCount = 0;
  cl->downloadEOF = qfalse;
 }


 while (cl->downloadCurrentBlock - cl->downloadClientBlock < MAX_DOWNLOAD_WINDOW &&
  cl->downloadSize != cl->downloadCount) {

  curindex = (cl->downloadCurrentBlock % MAX_DOWNLOAD_WINDOW);

  if (!cl->downloadBlocks[curindex])
   cl->downloadBlocks[curindex] = Z_Malloc(MAX_DOWNLOAD_BLKSIZE);

  cl->downloadBlockSize[curindex] = FS_Read( cl->downloadBlocks[curindex], MAX_DOWNLOAD_BLKSIZE, cl->download );

  if (cl->downloadBlockSize[curindex] < 0) {

   cl->downloadCount = cl->downloadSize;
   break;
  }

  cl->downloadCount += cl->downloadBlockSize[curindex];


  cl->downloadCurrentBlock++;
 }


 if (cl->downloadCount == cl->downloadSize &&
  !cl->downloadEOF &&
  cl->downloadCurrentBlock - cl->downloadClientBlock < MAX_DOWNLOAD_WINDOW) {

  cl->downloadBlockSize[cl->downloadCurrentBlock % MAX_DOWNLOAD_WINDOW] = 0;
  cl->downloadCurrentBlock++;

  cl->downloadEOF = qtrue;
 }

 if (cl->downloadClientBlock == cl->downloadCurrentBlock)
  return 0;



 if (cl->downloadXmitBlock == cl->downloadCurrentBlock)
 {

  if (svs.time - cl->downloadSendTime > 1000)
   cl->downloadXmitBlock = cl->downloadClientBlock;
  else
   return 0;
 }


 curindex = (cl->downloadXmitBlock % MAX_DOWNLOAD_WINDOW);

 MSG_WriteByte( msg, svc_download );
 MSG_WriteShort( msg, cl->downloadXmitBlock );


 if ( cl->downloadXmitBlock == 0 )
  MSG_WriteLong( msg, cl->downloadSize );

 MSG_WriteShort( msg, cl->downloadBlockSize[curindex] );


 if(cl->downloadBlockSize[curindex])
  MSG_WriteData(msg, cl->downloadBlocks[curindex], cl->downloadBlockSize[curindex]);

 Com_DPrintf( "clientDownload: %d : writing block %d\n", (int) (cl - svs.clients), cl->downloadXmitBlock );



 cl->downloadXmitBlock++;
 cl->downloadSendTime = svs.time;

 return 1;
}
