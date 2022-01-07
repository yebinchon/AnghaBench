
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gametype; } ;


 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_FFA ;
 scalar_t__ GT_HARVESTER ;
 scalar_t__ GT_OBELISK ;
 scalar_t__ GT_TEAM ;
 TYPE_1__ cgs ;

const char *CG_GameTypeString(void) {
 if ( cgs.gametype == GT_FFA ) {
  return "Free For All";
 } else if ( cgs.gametype == GT_TEAM ) {
  return "Team Deathmatch";
 } else if ( cgs.gametype == GT_CTF ) {
  return "Capture the Flag";
 } else if ( cgs.gametype == GT_1FCTF ) {
  return "One Flag CTF";
 } else if ( cgs.gametype == GT_OBELISK ) {
  return "Overload";
 } else if ( cgs.gametype == GT_HARVESTER ) {
  return "Harvester";
 }
 return "";
}
