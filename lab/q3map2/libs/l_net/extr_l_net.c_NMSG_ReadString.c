
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int string ;
struct TYPE_3__ {int read; int size; int* data; int readoverflow; } ;
typedef TYPE_1__ netmessage_t ;


 int WinPrint (char*) ;
 int qtrue ;

char *NMSG_ReadString( netmessage_t *msg ){
 static char string[2048];
 int l, c;

 l = 0;
 do
 {
  if ( msg->read + 1 > msg->size ) {
   msg->readoverflow = qtrue;
   WinPrint( "NMSG_ReadString: read overflow\n" );
   string[l] = 0;
   return string;
  }
  c = msg->data[msg->read];
  msg->read++;
  if ( c == 0 ) {
   break;
  }
  string[l] = c;
  l++;
 } while ( l < sizeof( string ) - 1 );
 string[l] = 0;
 return string;
}
