
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sfxHandle_t ;
struct TYPE_8__ {int* persistant; int* stats; scalar_t__* powerups; } ;
typedef TYPE_2__ playerState_t ;
struct TYPE_10__ {int time; int timelimitWarnings; int fraglimitWarnings; int warmup; scalar_t__ intermissionStarted; int predictedPlayerEntity; } ;
struct TYPE_7__ {int threeFragSound; int twoFragSound; int oneFragSound; int fiveMinuteSound; int oneMinuteSound; int suddenDeathSound; int lostLeadSound; int tiedLeadSound; int takenLeadSound; int youHaveFlagSound; int holyShitSound; int humiliationSound; int deniedSound; int medalAssist; int assistSound; int medalDefend; int defendSound; int medalGauntlet; int firstHumiliationSound; int medalExcellent; int excellentSound; int firstExcellentSound; int medalImpressive; int impressiveSound; int firstImpressiveSound; int medalCapture; int captureAwardSound; int hitTeamSound; int hitSound; int hitSoundLowArmor; int hitSoundHighArmor; } ;
struct TYPE_9__ {scalar_t__ gametype; int timelimit; int levelStartTime; int fraglimit; int scores1; int scores2; TYPE_1__ media; } ;


 int CG_AddBufferedSound (int ) ;
 int CG_PainEvent (int *,scalar_t__) ;
 int CHAN_ANNOUNCER ;
 int CHAN_LOCAL_SOUND ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_TEAM ;
 size_t PERS_ASSIST_COUNT ;
 size_t PERS_ATTACKEE_ARMOR ;
 size_t PERS_CAPTURES ;
 size_t PERS_DEFEND_COUNT ;
 size_t PERS_EXCELLENT_COUNT ;
 size_t PERS_GAUNTLET_FRAG_COUNT ;
 size_t PERS_HITS ;
 size_t PERS_IMPRESSIVE_COUNT ;
 size_t PERS_PLAYEREVENTS ;
 size_t PERS_RANK ;
 size_t PERS_TEAM ;
 int PLAYEREVENT_DENIEDREWARD ;
 int PLAYEREVENT_GAUNTLETREWARD ;
 int PLAYEREVENT_HOLYSHIT ;
 size_t PW_BLUEFLAG ;
 size_t PW_NEUTRALFLAG ;
 size_t PW_REDFLAG ;
 int RANK_TIED_FLAG ;
 size_t STAT_HEALTH ;
 TYPE_4__ cg ;
 TYPE_3__ cgs ;
 int pushReward (int ,int ,int) ;
 int qfalse ;
 int qtrue ;
 int trap_S_StartLocalSound (int ,int ) ;

void CG_CheckLocalSounds( playerState_t *ps, playerState_t *ops ) {
 int highScore, reward;



 sfxHandle_t sfx;


 if ( ps->persistant[PERS_TEAM] != ops->persistant[PERS_TEAM] ) {
  return;
 }


 if ( ps->persistant[PERS_HITS] > ops->persistant[PERS_HITS] ) {
  trap_S_StartLocalSound( cgs.media.hitSound, CHAN_LOCAL_SOUND );

 } else if ( ps->persistant[PERS_HITS] < ops->persistant[PERS_HITS] ) {
  trap_S_StartLocalSound( cgs.media.hitTeamSound, CHAN_LOCAL_SOUND );
 }


 if ( ps->stats[STAT_HEALTH] < ops->stats[STAT_HEALTH] - 1 ) {
  if ( ps->stats[STAT_HEALTH] > 0 ) {
   CG_PainEvent( &cg.predictedPlayerEntity, ps->stats[STAT_HEALTH] );
  }
 }



 if ( cg.intermissionStarted ) {
  return;
 }


 reward = qfalse;
 if (ps->persistant[PERS_CAPTURES] != ops->persistant[PERS_CAPTURES]) {
  pushReward(cgs.media.captureAwardSound, cgs.media.medalCapture, ps->persistant[PERS_CAPTURES]);
  reward = qtrue;

 }
 if (ps->persistant[PERS_IMPRESSIVE_COUNT] != ops->persistant[PERS_IMPRESSIVE_COUNT]) {







  sfx = cgs.media.impressiveSound;

  pushReward(sfx, cgs.media.medalImpressive, ps->persistant[PERS_IMPRESSIVE_COUNT]);
  reward = qtrue;

 }
 if (ps->persistant[PERS_EXCELLENT_COUNT] != ops->persistant[PERS_EXCELLENT_COUNT]) {







  sfx = cgs.media.excellentSound;

  pushReward(sfx, cgs.media.medalExcellent, ps->persistant[PERS_EXCELLENT_COUNT]);
  reward = qtrue;

 }
 if (ps->persistant[PERS_GAUNTLET_FRAG_COUNT] != ops->persistant[PERS_GAUNTLET_FRAG_COUNT]) {







  sfx = cgs.media.humiliationSound;

  pushReward(sfx, cgs.media.medalGauntlet, ps->persistant[PERS_GAUNTLET_FRAG_COUNT]);
  reward = qtrue;

 }
 if (ps->persistant[PERS_DEFEND_COUNT] != ops->persistant[PERS_DEFEND_COUNT]) {
  pushReward(cgs.media.defendSound, cgs.media.medalDefend, ps->persistant[PERS_DEFEND_COUNT]);
  reward = qtrue;

 }
 if (ps->persistant[PERS_ASSIST_COUNT] != ops->persistant[PERS_ASSIST_COUNT]) {
  pushReward(cgs.media.assistSound, cgs.media.medalAssist, ps->persistant[PERS_ASSIST_COUNT]);
  reward = qtrue;

 }

 if (ps->persistant[PERS_PLAYEREVENTS] != ops->persistant[PERS_PLAYEREVENTS]) {
  if ((ps->persistant[PERS_PLAYEREVENTS] & PLAYEREVENT_DENIEDREWARD) !=
    (ops->persistant[PERS_PLAYEREVENTS] & PLAYEREVENT_DENIEDREWARD)) {
   trap_S_StartLocalSound( cgs.media.deniedSound, CHAN_ANNOUNCER );
  }
  else if ((ps->persistant[PERS_PLAYEREVENTS] & PLAYEREVENT_GAUNTLETREWARD) !=
    (ops->persistant[PERS_PLAYEREVENTS] & PLAYEREVENT_GAUNTLETREWARD)) {
   trap_S_StartLocalSound( cgs.media.humiliationSound, CHAN_ANNOUNCER );
  }
  else if ((ps->persistant[PERS_PLAYEREVENTS] & PLAYEREVENT_HOLYSHIT) !=
    (ops->persistant[PERS_PLAYEREVENTS] & PLAYEREVENT_HOLYSHIT)) {
   trap_S_StartLocalSound( cgs.media.holyShitSound, CHAN_ANNOUNCER );
  }
  reward = qtrue;
 }


 if ( cgs.gametype > GT_TEAM ) {
  if ((ps->powerups[PW_REDFLAG] != ops->powerups[PW_REDFLAG] && ps->powerups[PW_REDFLAG]) ||
   (ps->powerups[PW_BLUEFLAG] != ops->powerups[PW_BLUEFLAG] && ps->powerups[PW_BLUEFLAG]) ||
   (ps->powerups[PW_NEUTRALFLAG] != ops->powerups[PW_NEUTRALFLAG] && ps->powerups[PW_NEUTRALFLAG]) )
  {
   trap_S_StartLocalSound( cgs.media.youHaveFlagSound, CHAN_ANNOUNCER );
  }
 }


 if (!reward) {

  if ( !cg.warmup ) {

   if ( ps->persistant[PERS_RANK] != ops->persistant[PERS_RANK] ) {
    if ( cgs.gametype < GT_TEAM) {
     if ( ps->persistant[PERS_RANK] == 0 ) {
      CG_AddBufferedSound(cgs.media.takenLeadSound);
     } else if ( ps->persistant[PERS_RANK] == RANK_TIED_FLAG ) {
      CG_AddBufferedSound(cgs.media.tiedLeadSound);
     } else if ( ( ops->persistant[PERS_RANK] & ~RANK_TIED_FLAG ) == 0 ) {
      CG_AddBufferedSound(cgs.media.lostLeadSound);
     }
    }
   }
  }
 }


 if ( cgs.timelimit > 0 ) {
  int msec;

  msec = cg.time - cgs.levelStartTime;
  if ( !( cg.timelimitWarnings & 4 ) && msec > ( cgs.timelimit * 60 + 2 ) * 1000 ) {
   cg.timelimitWarnings |= 1 | 2 | 4;
   trap_S_StartLocalSound( cgs.media.suddenDeathSound, CHAN_ANNOUNCER );
  }
  else if ( !( cg.timelimitWarnings & 2 ) && msec > (cgs.timelimit - 1) * 60 * 1000 ) {
   cg.timelimitWarnings |= 1 | 2;
   trap_S_StartLocalSound( cgs.media.oneMinuteSound, CHAN_ANNOUNCER );
  }
  else if ( cgs.timelimit > 5 && !( cg.timelimitWarnings & 1 ) && msec > (cgs.timelimit - 5) * 60 * 1000 ) {
   cg.timelimitWarnings |= 1;
   trap_S_StartLocalSound( cgs.media.fiveMinuteSound, CHAN_ANNOUNCER );
  }
 }


 if ( cgs.fraglimit > 0 && cgs.gametype < GT_CTF) {
  highScore = cgs.scores1;

  if (cgs.gametype == GT_TEAM && cgs.scores2 > highScore) {
   highScore = cgs.scores2;
  }

  if ( !( cg.fraglimitWarnings & 4 ) && highScore == (cgs.fraglimit - 1) ) {
   cg.fraglimitWarnings |= 1 | 2 | 4;
   CG_AddBufferedSound(cgs.media.oneFragSound);
  }
  else if ( cgs.fraglimit > 2 && !( cg.fraglimitWarnings & 2 ) && highScore == (cgs.fraglimit - 2) ) {
   cg.fraglimitWarnings |= 1 | 2;
   CG_AddBufferedSound(cgs.media.twoFragSound);
  }
  else if ( cgs.fraglimit > 3 && !( cg.fraglimitWarnings & 1 ) && highScore == (cgs.fraglimit - 3) ) {
   cg.fraglimitWarnings |= 1;
   CG_AddBufferedSound(cgs.media.threeFragSound);
  }
 }
}
