
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int addr; } ;
typedef TYPE_1__ socket_t ;
struct TYPE_6__ {int ip; } ;
typedef TYPE_2__ address_t ;


 int WINS_AddrToString (int *) ;
 int strcpy (int ,int ) ;

void Net_SocketToAddress( socket_t *sock, address_t *address ){
 strcpy( address->ip, WINS_AddrToString( &sock->addr ) );
}
