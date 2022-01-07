
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socket_t ;


 int FreeMemory (int *) ;

void Net_FreeSocket( socket_t *sock ){
 FreeMemory( sock );
}
