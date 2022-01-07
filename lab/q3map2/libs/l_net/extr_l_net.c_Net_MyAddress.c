
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ip; } ;
typedef TYPE_1__ address_t ;


 int WINS_MyAddress () ;
 int strcpy (int ,int ) ;

void Net_MyAddress( address_t *address ){
 strcpy( address->ip, WINS_MyAddress() );
}
