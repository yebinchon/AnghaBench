
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; int* data; } ;
typedef TYPE_1__ netmessage_t ;


 size_t MAX_NETMESSAGE ;
 int WinPrint (char*) ;

void NMSG_WriteChar( netmessage_t *msg, int c ){
 if ( c < -128 || c > 127 ) {
  WinPrint( "NMSG_WriteChar: range error\n" );
 }

 if ( msg->size >= MAX_NETMESSAGE ) {
  WinPrint( "NMSG_WriteChar: overflow\n" );
  return;
 }
 msg->data[msg->size] = c;
 msg->size++;
}
