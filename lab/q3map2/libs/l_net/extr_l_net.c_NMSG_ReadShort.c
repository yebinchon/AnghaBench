
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int read; int size; int* data; int readoverflow; } ;
typedef TYPE_1__ netmessage_t ;


 int WinPrint (char*) ;
 int qtrue ;

int NMSG_ReadShort( netmessage_t *msg ){
 int c;

 if ( msg->read + 2 > msg->size ) {
  msg->readoverflow = qtrue;
  WinPrint( "NMSG_ReadShort: read overflow\n" );
  return 0;
 }
 c = (short)( msg->data[msg->read] + ( msg->data[msg->read + 1] << 8 ) );
 msg->read += 2;
 return c;
}
