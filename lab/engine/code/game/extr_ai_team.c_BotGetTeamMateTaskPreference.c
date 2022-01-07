
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
 scalar_t__ Q_stricmp (char*,int ) ;
 TYPE_1__* ctftaskpreferences ;

int BotGetTeamMateTaskPreference(bot_state_t *bs, int teammate) {
 char teammatename[MAX_NETNAME];

 if (!ctftaskpreferences[teammate].preference) return 0;
 ClientName(teammate, teammatename, sizeof(teammatename));
 if (Q_stricmp(teammatename, ctftaskpreferences[teammate].name)) return 0;
 return ctftaskpreferences[teammate].preference;
}
