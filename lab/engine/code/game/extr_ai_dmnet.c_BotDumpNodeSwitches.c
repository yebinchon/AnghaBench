
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int netname ;
struct TYPE_3__ {int client; } ;
typedef TYPE_1__ bot_state_t ;


 int BotAI_Print (int ,char*,...) ;
 int ClientName (int ,char*,int) ;
 int FloatTime () ;
 int MAX_NETNAME ;
 int MAX_NODESWITCHES ;
 int PRT_FATAL ;
 int PRT_MESSAGE ;
 int * nodeswitch ;
 int numnodeswitches ;

void BotDumpNodeSwitches(bot_state_t *bs) {
 int i;
 char netname[MAX_NETNAME];

 ClientName(bs->client, netname, sizeof(netname));
 BotAI_Print(PRT_MESSAGE, "%s at %1.1f switched more than %d AI nodes\n", netname, FloatTime(), MAX_NODESWITCHES);
 for (i = 0; i < numnodeswitches; i++) {
  BotAI_Print(PRT_MESSAGE, "%s", nodeswitch[i]);
 }
 BotAI_Print(PRT_FATAL, "");
}
