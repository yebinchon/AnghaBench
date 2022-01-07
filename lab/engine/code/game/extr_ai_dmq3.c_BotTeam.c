
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t client; } ;
typedef TYPE_3__ bot_state_t ;
struct TYPE_9__ {TYPE_2__* clients; } ;
struct TYPE_6__ {scalar_t__ sessionTeam; } ;
struct TYPE_7__ {TYPE_1__ sess; } ;


 size_t MAX_CLIENTS ;
 scalar_t__ TEAM_BLUE ;
 int TEAM_FREE ;
 scalar_t__ TEAM_RED ;
 TYPE_4__ level ;
 int qfalse ;

int BotTeam(bot_state_t *bs) {

 if (bs->client < 0 || bs->client >= MAX_CLIENTS) {
  return qfalse;
 }

    if (level.clients[bs->client].sess.sessionTeam == TEAM_RED) {
  return TEAM_RED;
 } else if (level.clients[bs->client].sess.sessionTeam == TEAM_BLUE) {
  return TEAM_BLUE;
 }

 return TEAM_FREE;
}
