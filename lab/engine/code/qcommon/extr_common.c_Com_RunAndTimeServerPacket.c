
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int netadr_t ;
typedef int msg_t ;
struct TYPE_2__ {int integer; } ;


 int Com_Printf (char*,int) ;
 int SV_PacketEvent (int ,int *) ;
 int Sys_Milliseconds () ;
 TYPE_1__* com_speeds ;

void Com_RunAndTimeServerPacket( netadr_t *evFrom, msg_t *buf ) {
 int t1, t2, msec;

 t1 = 0;

 if ( com_speeds->integer ) {
  t1 = Sys_Milliseconds ();
 }

 SV_PacketEvent( *evFrom, buf );

 if ( com_speeds->integer ) {
  t2 = Sys_Milliseconds ();
  msec = t2 - t1;
  if ( com_speeds->integer == 3 ) {
   Com_Printf( "SV_PacketEvent time: %i\n", msec );
  }
 }
}
