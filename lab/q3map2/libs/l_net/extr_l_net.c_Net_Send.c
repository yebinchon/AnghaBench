
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int socket; } ;
typedef TYPE_1__ socket_t ;
struct TYPE_7__ {int size; int data; } ;
typedef TYPE_2__ netmessage_t ;


 int NMSG_WriteLong (TYPE_2__*,int) ;
 int WINS_Write (int ,int ,int,int *) ;

int Net_Send( socket_t *sock, netmessage_t *msg ){
 int size;

 size = msg->size;
 msg->size = 0;
 NMSG_WriteLong( msg, size - 4 );
 msg->size = size;

 return WINS_Write( sock->socket, msg->data, msg->size, ((void*)0) );
}
