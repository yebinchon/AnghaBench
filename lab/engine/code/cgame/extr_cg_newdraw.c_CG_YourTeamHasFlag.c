
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_8__ {TYPE_2__* snap; } ;
struct TYPE_7__ {scalar_t__ gametype; scalar_t__ flagStatus; scalar_t__ blueflag; scalar_t__ redflag; } ;
struct TYPE_5__ {int* persistant; } ;
struct TYPE_6__ {TYPE_1__ ps; } ;


 scalar_t__ FLAG_TAKEN ;
 scalar_t__ FLAG_TAKEN_BLUE ;
 scalar_t__ FLAG_TAKEN_RED ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 size_t PERS_TEAM ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 TYPE_4__ cg ;
 TYPE_3__ cgs ;
 int qfalse ;
 int qtrue ;

qboolean CG_YourTeamHasFlag(void) {
 if (cgs.gametype == GT_CTF || cgs.gametype == GT_1FCTF) {
  int team = cg.snap->ps.persistant[PERS_TEAM];
  if (cgs.gametype == GT_1FCTF) {
   if (team == TEAM_RED && cgs.flagStatus == FLAG_TAKEN_RED) {
    return qtrue;
   } else if (team == TEAM_BLUE && cgs.flagStatus == FLAG_TAKEN_BLUE) {
    return qtrue;
   } else {
    return qfalse;
   }
  } else {
   if (team == TEAM_RED && cgs.blueflag == FLAG_TAKEN) {
    return qtrue;
   } else if (team == TEAM_BLUE && cgs.redflag == FLAG_TAKEN) {
    return qtrue;
   } else {
    return qfalse;
   }
  }
 }
 return qfalse;
}
