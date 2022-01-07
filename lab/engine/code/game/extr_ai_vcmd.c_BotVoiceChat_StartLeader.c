
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int teamleader; } ;
typedef TYPE_1__ bot_state_t ;


 int ClientName (int,int ,int) ;

void BotVoiceChat_StartLeader(bot_state_t *bs, int client, int mode) {
 ClientName(client, bs->teamleader, sizeof(bs->teamleader));
}
