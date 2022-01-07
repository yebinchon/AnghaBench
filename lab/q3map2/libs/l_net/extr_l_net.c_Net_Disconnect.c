
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int socket; } ;
typedef TYPE_1__ socket_t ;


 int Net_FreeSocket (TYPE_1__*) ;
 int WINS_CloseSocket (int ) ;

void Net_Disconnect( socket_t *sock ){
 WINS_CloseSocket( sock->socket );
 Net_FreeSocket( sock );
}
