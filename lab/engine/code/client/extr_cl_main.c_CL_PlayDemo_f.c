
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int name ;
typedef int arg ;
struct TYPE_6__ {char* demoName; scalar_t__ state; char* servername; void* firstDemoFrameSkipped; void* compat; void* demoplaying; int demofile; } ;
struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {int integer; } ;


 int ARRAY_LEN (char*) ;
 scalar_t__ CA_CONNECTED ;
 scalar_t__ CA_PRIMED ;
 int CL_Disconnect (void*) ;
 int CL_ReadDemoMessage () ;
 int CL_WalkDemoExt (char*,char*,int *) ;
 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Error (int ,char*,char*) ;
 int Com_Printf (char*,...) ;
 int Com_sprintf (char*,int,char*,char*) ;
 int Con_Close () ;
 int Cvar_Set (char*,char*) ;
 char* DEMOEXT ;
 int ERR_DROP ;
 int FS_FOpenFileRead (char*,int *,void*) ;
 int MAX_OSPATH ;
 int Q_stricmpn (char*,char*,int) ;
 int Q_strncpyz (char*,char*,int) ;
 int atoi (char*) ;
 TYPE_3__ clc ;
 TYPE_2__* com_legacyprotocol ;
 TYPE_1__* com_protocol ;
 int* demo_protocols ;
 void* qfalse ;
 void* qtrue ;
 char* strrchr (char*,char) ;

void CL_PlayDemo_f( void ) {
 char name[MAX_OSPATH];
 char arg[MAX_OSPATH];
 char *ext_test;
 int protocol, i;
 char retry[MAX_OSPATH];

 if (Cmd_Argc() != 2) {
  Com_Printf ("demo <demoname>\n");
  return;
 }



 Cvar_Set( "sv_killserver", "2" );


 Q_strncpyz( arg, Cmd_Argv(1), sizeof( arg ) );

 CL_Disconnect( qtrue );


 ext_test = strrchr(arg, '.');

 if(ext_test && !Q_stricmpn(ext_test + 1, DEMOEXT, ARRAY_LEN(DEMOEXT) - 1))
 {
  protocol = atoi(ext_test + ARRAY_LEN(DEMOEXT));

  for(i = 0; demo_protocols[i]; i++)
  {
   if(demo_protocols[i] == protocol)
    break;
  }

  if(demo_protocols[i] || protocol == com_protocol->integer



    )
  {
   Com_sprintf(name, sizeof(name), "demos/%s", arg);
   FS_FOpenFileRead(name, &clc.demofile, qtrue);
  }
  else
  {
   int len;

   Com_Printf("Protocol %d not supported for demos\n", protocol);
   len = ext_test - arg;

   if(len >= ARRAY_LEN(retry))
    len = ARRAY_LEN(retry) - 1;

   Q_strncpyz(retry, arg, len + 1);
   retry[len] = '\0';
   protocol = CL_WalkDemoExt(retry, name, &clc.demofile);
  }
 }
 else
  protocol = CL_WalkDemoExt(arg, name, &clc.demofile);

 if (!clc.demofile) {
  Com_Error( ERR_DROP, "couldn't open %s", name);
  return;
 }
 Q_strncpyz( clc.demoName, arg, sizeof( clc.demoName ) );

 Con_Close();

 clc.state = CA_CONNECTED;
 clc.demoplaying = qtrue;
 Q_strncpyz( clc.servername, arg, sizeof( clc.servername ) );
 while ( clc.state >= CA_CONNECTED && clc.state < CA_PRIMED ) {
  CL_ReadDemoMessage();
 }


 clc.firstDemoFrameSkipped = qfalse;
}
