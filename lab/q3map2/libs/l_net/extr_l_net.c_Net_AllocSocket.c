
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socket_t ;


 scalar_t__ GetMemory (int) ;
 int memset (int *,int ,int) ;

socket_t *Net_AllocSocket( void ){
 socket_t *sock;

 sock = (socket_t *) GetMemory( sizeof( socket_t ) );
 memset( sock, 0, sizeof( socket_t ) );
 return sock;
}
