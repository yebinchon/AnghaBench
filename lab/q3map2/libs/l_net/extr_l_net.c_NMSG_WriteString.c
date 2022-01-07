
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; int * data; } ;
typedef TYPE_1__ netmessage_t ;


 scalar_t__ MAX_NETMESSAGE ;
 int WinPrint (char*) ;
 int memcpy (int *,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void NMSG_WriteString( netmessage_t *msg, char *string ){
 if ( msg->size + strlen( string ) + 1 >= MAX_NETMESSAGE ) {
  WinPrint( "NMSG_WriteString: overflow\n" );
  return;
 }
 memcpy( &msg->data[msg->size], string, strlen( string ) + 1 );
 msg->size += strlen( string ) + 1;
}
