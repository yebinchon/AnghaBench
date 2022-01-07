
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int* data; } ;
typedef TYPE_1__ netmessage_t ;


 int MAX_NETMESSAGE ;
 int WinPrint (char*) ;

void NMSG_WriteByte( netmessage_t *msg, int c ){
 if ( c < -128 || c > 127 ) {
  WinPrint( "NMSG_WriteByte: range error\n" );
 }

 if ( msg->size + 1 >= MAX_NETMESSAGE ) {
  WinPrint( "NMSG_WriteByte: overflow\n" );
  return;
 }
 msg->data[msg->size] = c;
 msg->size++;
}
