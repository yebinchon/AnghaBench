
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cursize; int maxsize; int* data; scalar_t__ readcount; } ;
typedef TYPE_1__ msg_t ;
typedef int byte ;
typedef int bufData ;
struct TYPE_8__ {int lastPacketTime; int demofile; void* serverMessageSequence; } ;
struct TYPE_7__ {int realtime; } ;


 int CL_DemoCompleted () ;
 int CL_ParseServerMessage (TYPE_1__*) ;
 int Com_Error (int ,char*) ;
 int Com_Printf (char*) ;
 int ERR_DROP ;
 int FS_Read (int*,int,int ) ;
 void* LittleLong (int) ;
 int MAX_MSGLEN ;
 int MSG_Init (TYPE_1__*,int *,int) ;
 TYPE_3__ clc ;
 TYPE_2__ cls ;

void CL_ReadDemoMessage( void ) {
 int r;
 msg_t buf;
 byte bufData[ MAX_MSGLEN ];
 int s;

 if ( !clc.demofile ) {
  CL_DemoCompleted ();
  return;
 }


 r = FS_Read( &s, 4, clc.demofile);
 if ( r != 4 ) {
  CL_DemoCompleted ();
  return;
 }
 clc.serverMessageSequence = LittleLong( s );


 MSG_Init( &buf, bufData, sizeof( bufData ) );


 r = FS_Read (&buf.cursize, 4, clc.demofile);
 if ( r != 4 ) {
  CL_DemoCompleted ();
  return;
 }
 buf.cursize = LittleLong( buf.cursize );
 if ( buf.cursize == -1 ) {
  CL_DemoCompleted ();
  return;
 }
 if ( buf.cursize > buf.maxsize ) {
  Com_Error (ERR_DROP, "CL_ReadDemoMessage: demoMsglen > MAX_MSGLEN");
 }
 r = FS_Read( buf.data, buf.cursize, clc.demofile );
 if ( r != buf.cursize ) {
  Com_Printf( "Demo file was truncated.\n");
  CL_DemoCompleted ();
  return;
 }

 clc.lastPacketTime = cls.realtime;
 buf.readcount = 0;
 CL_ParseServerMessage( &buf );
}
