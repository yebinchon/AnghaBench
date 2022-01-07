
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_13__ {TYPE_3__* client; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {int* teamScores; scalar_t__ warmupTime; } ;
struct TYPE_11__ {int clientNum; int* persistant; } ;
struct TYPE_10__ {int sessionTeam; } ;
struct TYPE_12__ {TYPE_2__ ps; TYPE_1__ sess; } ;


 int CalculateRanks () ;
 scalar_t__ GT_TEAM ;
 size_t PERS_SCORE ;
 size_t PERS_TEAM ;
 int ScorePlum (TYPE_4__*,int ,int) ;
 int dmlab_reward_override (char const*,int,int ,int const*,int ,int) ;
 TYPE_6__ g_gametype ;
 TYPE_5__ level ;

void AddScore( gentity_t *ent, vec3_t origin, int score, const char* reason, gentity_t *other ) {
  const int* other_client_num = ((void*)0);
 if ( !ent->client ) {
  return;
 }

 if ( level.warmupTime ) {
  return;
 }
  if (other != ((void*)0) && other->client) {
    other_client_num = &other->client->ps.clientNum;
  }
 score = dmlab_reward_override(reason, ent->client->ps.clientNum, ent->client->sess.sessionTeam, other_client_num, origin, score);
 if ( score == 0 ) {
  return;
 }

 if ( origin ) {
  ScorePlum( ent, origin, score );
 }

 ent->client->ps.persistant[PERS_SCORE] += score;
 if ( g_gametype.integer == GT_TEAM )
  level.teamScores[ ent->client->ps.persistant[PERS_TEAM] ] += score;
 CalculateRanks();
}
