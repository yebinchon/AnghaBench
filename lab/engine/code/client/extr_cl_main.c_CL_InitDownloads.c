
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int missingfiles ;
struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {char* downloadList; scalar_t__* downloadName; scalar_t__* downloadTempName; int state; } ;


 int CA_CONNECTED ;
 int CL_DownloadsComplete () ;
 int CL_NextDownload () ;
 int Com_Printf (char*,char*) ;
 int Cvar_Set (char*,char*) ;
 int DLF_ENABLE ;
 scalar_t__ FS_ComparePaks (char*,int,int ) ;
 TYPE_2__* cl_allowDownload ;
 TYPE_1__ clc ;
 int qfalse ;
 int qtrue ;

void CL_InitDownloads(void) {
  char missingfiles[1024];

  if ( !(cl_allowDownload->integer & DLF_ENABLE) )
  {


    if (FS_ComparePaks( missingfiles, sizeof( missingfiles ), qfalse ) )
    {


      Com_Printf( "\nWARNING: You are missing some files referenced by the server:\n%s"
                  "You might not be able to join the game\n"
                  "Go to the setting menu to turn on autodownload, or get the file elsewhere\n\n", missingfiles );
    }
  }
  else if ( FS_ComparePaks( clc.downloadList, sizeof( clc.downloadList ) , qtrue ) ) {

    Com_Printf("Need paks: %s\n", clc.downloadList );

  if ( *clc.downloadList ) {

   clc.state = CA_CONNECTED;

   *clc.downloadTempName = *clc.downloadName = 0;
   Cvar_Set( "cl_downloadName", "" );

   CL_NextDownload();
   return;
  }

 }

 CL_DownloadsComplete();
}
