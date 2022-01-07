
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int* data; } ;
typedef TYPE_1__ netmessage_t ;


 int MAX_NETMESSAGE ;
 int WinPrint (char*) ;

void NMSG_WriteShort( netmessage_t *msg, int c ){
 if ( c < ( (short)0x8000 ) || c > (short)0x7fff ) {
  WinPrint( "NMSG_WriteShort: range error" );
 }

 if ( msg->size + 2 >= MAX_NETMESSAGE ) {
  WinPrint( "NMSG_WriteShort: overflow\n" );
  return;
 }
 msg->data[msg->size] = c & 0xff;
 msg->data[msg->size + 1] = c >> 8;
 msg->size += 2;
}
