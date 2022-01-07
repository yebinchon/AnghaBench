
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int* data; } ;
typedef TYPE_1__ netmessage_t ;


 int MAX_NETMESSAGE ;
 int WinPrint (char*) ;

void NMSG_WriteLong( netmessage_t *msg, int c ){
 if ( msg->size + 4 >= MAX_NETMESSAGE ) {
  WinPrint( "NMSG_WriteLong: overflow\n" );
  return;
 }
 msg->data[msg->size] = c & 0xff;
 msg->data[msg->size + 1] = ( c >> 8 ) & 0xff;
 msg->data[msg->size + 2] = ( c >> 16 ) & 0xff;
 msg->data[msg->size + 3] = c >> 24;
 msg->size += 4;
}
