
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ip; } ;
typedef TYPE_1__ address_t ;


 int strcasecmp (int ,int ) ;
 int stricmp (int ,int ) ;

int Net_AddressCompare( address_t *addr1, address_t *addr2 ){



 return strcasecmp( addr1->ip, addr2->ip );



}
