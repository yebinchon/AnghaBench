
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GT_TEAM ;
 scalar_t__ gametype ;

int TeamPlayIsOn(void) {
 return ( gametype >= GT_TEAM );
}
