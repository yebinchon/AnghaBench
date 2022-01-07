
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {TYPE_5__* client; } ;
typedef TYPE_6__ gentity_t ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {int time; } ;
struct TYPE_13__ {int lasthurtcarrier; } ;
struct TYPE_14__ {TYPE_3__ teamState; } ;
struct TYPE_12__ {scalar_t__ sessionTeam; } ;
struct TYPE_11__ {scalar_t__ generic1; scalar_t__* powerups; } ;
struct TYPE_15__ {TYPE_4__ pers; TYPE_2__ sess; TYPE_1__ ps; } ;


 scalar_t__ GT_1FCTF ;
 int PW_BLUEFLAG ;
 int PW_NEUTRALFLAG ;
 int PW_REDFLAG ;
 scalar_t__ TEAM_RED ;
 TYPE_8__ g_gametype ;
 TYPE_7__ level ;

void Team_CheckHurtCarrier(gentity_t *targ, gentity_t *attacker)
{
 int flag_pw;

 if (!targ->client || !attacker->client)
  return;

 if (targ->client->sess.sessionTeam == TEAM_RED)
  flag_pw = PW_BLUEFLAG;
 else
  flag_pw = PW_REDFLAG;
 if (targ->client->ps.powerups[flag_pw] &&
  targ->client->sess.sessionTeam != attacker->client->sess.sessionTeam)
  attacker->client->pers.teamState.lasthurtcarrier = level.time;


 if (targ->client->ps.generic1 &&
  targ->client->sess.sessionTeam != attacker->client->sess.sessionTeam)
  attacker->client->pers.teamState.lasthurtcarrier = level.time;
}
