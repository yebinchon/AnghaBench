
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* binding; } ;


 int MAX_KEYS ;
 TYPE_1__* keys ;

char *Key_GetBinding( int keynum ) {
 if ( keynum < 0 || keynum >= MAX_KEYS ) {
  return "";
 }

 return keys[ keynum ].binding;
}
