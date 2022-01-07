
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* spDemoRecording; void* demorecording; scalar_t__ demofile; } ;


 int Com_Printf (char*) ;
 int FS_FCloseFile (scalar_t__) ;
 int FS_Write (int*,int,scalar_t__) ;
 TYPE_1__ clc ;
 void* qfalse ;

void CL_StopRecord_f( void ) {
 int len;

 if ( !clc.demorecording ) {
  Com_Printf ("Not recording a demo.\n");
  return;
 }


 len = -1;
 FS_Write (&len, 4, clc.demofile);
 FS_Write (&len, 4, clc.demofile);
 FS_FCloseFile (clc.demofile);
 clc.demofile = 0;
 clc.demorecording = qfalse;
 clc.spDemoRecording = qfalse;
 Com_Printf ("Stopped demo.\n");
}
