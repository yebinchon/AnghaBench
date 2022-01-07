
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sockaddr_t ;
struct TYPE_3__ {int ip; } ;
typedef TYPE_1__ address_t ;


 int WINS_AddrToString (int *) ;
 int WINS_SetSocketPort (int *,int) ;
 int WINS_StringToAddr (int ,int *) ;
 int strcpy (int ,int ) ;

void Net_SetAddressPort( address_t *address, int port ){
 sockaddr_t addr;

 WINS_StringToAddr( address->ip, &addr );
 WINS_SetSocketPort( &addr, port );
 strcpy( address->ip, WINS_AddrToString( &addr ) );
}
