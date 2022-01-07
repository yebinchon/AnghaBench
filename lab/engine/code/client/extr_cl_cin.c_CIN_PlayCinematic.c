
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int name ;
typedef int cinematics_t ;
struct TYPE_9__ {size_t currentHandle; scalar_t__* file; } ;
struct TYPE_8__ {scalar_t__ ROQSize; int holdAtEnd; int alterGameState; int playonwalls; int silent; int shader; int status; int iFile; int CIN_WIDTH; int CIN_HEIGHT; scalar_t__* fileName; } ;
struct TYPE_7__ {int integer; } ;
struct TYPE_6__ {int state; } ;


 int CA_CINEMATIC ;
 size_t CIN_HandleForVideo () ;
 int CIN_SetExtents (size_t,int,int,int,int) ;
 int CIN_SetLooping (size_t,int) ;
 int CIN_hold ;
 int CIN_loop ;
 int CIN_shader ;
 int CIN_silent ;
 int CIN_system ;
 int Com_DPrintf (char*,...) ;
 int Com_Memset (TYPE_4__*,int ,int) ;
 int Com_sprintf (char*,int,char*,char const*) ;
 int Con_Close () ;
 int DEFAULT_CIN_HEIGHT ;
 int DEFAULT_CIN_WIDTH ;
 int FMV_PLAY ;
 scalar_t__ FS_FOpenFileRead (scalar_t__*,int *,int ) ;
 int FS_Read (scalar_t__*,int,int ) ;
 int MAX_OSPATH ;
 int MAX_VIDEO_HANDLES ;
 int RoQShutdown () ;
 int RoQ_init () ;
 int UIMENU_NONE ;
 int UI_SET_ACTIVE_MENU ;
 int VM_Call (scalar_t__,int ,int ) ;
 TYPE_4__ cin ;
 TYPE_3__* cinTable ;
 TYPE_2__* cl_inGameVideo ;
 TYPE_1__ clc ;
 size_t currentHandle ;
 int initRoQ () ;
 int qtrue ;
 int * s_rawend ;
 int s_soundtime ;
 int strcmp (scalar_t__*,char*) ;
 int strcpy (scalar_t__*,char*) ;
 int * strstr (char const*,char*) ;
 scalar_t__ uivm ;

int CIN_PlayCinematic( const char *arg, int x, int y, int w, int h, int systemBits ) {
 unsigned short RoQID;
 char name[MAX_OSPATH];
 int i;

 if (strstr(arg, "/") == ((void*)0) && strstr(arg, "\\") == ((void*)0)) {
  Com_sprintf (name, sizeof(name), "video/%s", arg);
 } else {
  Com_sprintf (name, sizeof(name), "%s", arg);
 }

 if (!(systemBits & CIN_system)) {
  for ( i = 0 ; i < MAX_VIDEO_HANDLES ; i++ ) {
   if (!strcmp(cinTable[i].fileName, name) ) {
    return i;
   }
  }
 }

 Com_DPrintf("CIN_PlayCinematic( %s )\n", arg);

 Com_Memset(&cin, 0, sizeof(cinematics_t) );
 currentHandle = CIN_HandleForVideo();

 cin.currentHandle = currentHandle;

 strcpy(cinTable[currentHandle].fileName, name);

 cinTable[currentHandle].ROQSize = 0;
 cinTable[currentHandle].ROQSize = FS_FOpenFileRead (cinTable[currentHandle].fileName, &cinTable[currentHandle].iFile, qtrue);

 if (cinTable[currentHandle].ROQSize<=0) {
  Com_DPrintf("play(%s), ROQSize<=0\n", arg);
  cinTable[currentHandle].fileName[0] = 0;
  return -1;
 }

 CIN_SetExtents(currentHandle, x, y, w, h);
 CIN_SetLooping(currentHandle, (systemBits & CIN_loop)!=0);

 cinTable[currentHandle].CIN_HEIGHT = DEFAULT_CIN_HEIGHT;
 cinTable[currentHandle].CIN_WIDTH = DEFAULT_CIN_WIDTH;
 cinTable[currentHandle].holdAtEnd = (systemBits & CIN_hold) != 0;
 cinTable[currentHandle].alterGameState = (systemBits & CIN_system) != 0;
 cinTable[currentHandle].playonwalls = 1;
 cinTable[currentHandle].silent = (systemBits & CIN_silent) != 0;
 cinTable[currentHandle].shader = (systemBits & CIN_shader) != 0;

 if (cinTable[currentHandle].alterGameState) {

  if ( uivm ) {
   VM_Call( uivm, UI_SET_ACTIVE_MENU, UIMENU_NONE );
  }
 } else {
  cinTable[currentHandle].playonwalls = cl_inGameVideo->integer;
 }

 initRoQ();

 FS_Read (cin.file, 16, cinTable[currentHandle].iFile);

 RoQID = (unsigned short)(cin.file[0]) + (unsigned short)(cin.file[1])*256;
 if (RoQID == 0x1084)
 {
  RoQ_init();


  cinTable[currentHandle].status = FMV_PLAY;
  Com_DPrintf("trFMV::play(), playing %s\n", arg);

  if (cinTable[currentHandle].alterGameState) {
   clc.state = CA_CINEMATIC;
  }

  Con_Close();

  if (!cinTable[currentHandle].silent) {
   s_rawend[0] = s_soundtime;
  }

  return currentHandle;
 }
 Com_DPrintf("trFMV::play(), invalid RoQ ID\n");

 RoQShutdown();
 return -1;
}
