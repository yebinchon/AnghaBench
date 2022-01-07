
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int socketError ;
 char* strerror (int) ;

char *NET_ErrorString( void ) {
 return strerror(socketError);

}
