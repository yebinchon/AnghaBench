
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int teammatename ;
typedef int bot_state_t ;
struct TYPE_2__ {int preference; int name; } ;


 int ClientName (int,char*,int) ;
 int MAX_NETNAME ;
 TYPE_1__* ctftaskpreferences ;
 int strcpy (int ,char*) ;

void BotSetTeamMateTaskPreference(bot_state_t *bs, int teammate, int preference) {
 char teammatename[MAX_NETNAME];

 ctftaskpreferences[teammate].preference = preference;
 ClientName(teammate, teammatename, sizeof(teammatename));
 strcpy(ctftaskpreferences[teammate].name, teammatename);
}
