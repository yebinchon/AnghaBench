
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numlocalservers; int numglobalservers; int numfavoriteservers; } ;






 TYPE_1__ cls ;

__attribute__((used)) static int LAN_GetServerCount( int source ) {
 switch (source) {
  case 129 :
   return cls.numlocalservers;
   break;
  case 128:
  case 130 :
   return cls.numglobalservers;
   break;
  case 131 :
   return cls.numfavoriteservers;
   break;
 }
 return 0;
}
