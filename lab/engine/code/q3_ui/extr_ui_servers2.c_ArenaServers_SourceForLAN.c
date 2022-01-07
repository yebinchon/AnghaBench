
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AS_FAVORITES ;
 int AS_GLOBAL ;
 int AS_LOCAL ;
 int g_servertype ;

int ArenaServers_SourceForLAN(void) {
 switch( g_servertype ) {
 default:
 case 128:
  return AS_LOCAL;
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
  return AS_GLOBAL;
 case 135:
  return AS_FAVORITES;
 }
}
