
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int client; } ;
typedef TYPE_3__ bot_state_t ;
struct TYPE_9__ {TYPE_2__* clients; } ;
struct TYPE_6__ {scalar_t__ sessionTeam; } ;
struct TYPE_7__ {TYPE_1__ sess; } ;


 scalar_t__ GT_TEAM ;
 int MAX_CLIENTS ;
 scalar_t__ gametype ;
 TYPE_4__ level ;
 int qfalse ;
 int qtrue ;

int BotSameTeam(bot_state_t *bs, int entnum) {

 if (bs->client < 0 || bs->client >= MAX_CLIENTS) {
  return qfalse;
 }

 if (entnum < 0 || entnum >= MAX_CLIENTS) {
  return qfalse;
 }

 if (gametype >= GT_TEAM) {
  if (level.clients[bs->client].sess.sessionTeam == level.clients[entnum].sess.sessionTeam) return qtrue;
 }

 return qfalse;
}
