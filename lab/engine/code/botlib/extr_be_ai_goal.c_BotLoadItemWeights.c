
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int itemweightconfig; int itemweightindex; } ;
typedef TYPE_1__ bot_goalstate_t ;
struct TYPE_5__ {int (* Print ) (int ,char*) ;} ;


 int BLERR_CANNOTLOADITEMWEIGHTS ;
 int BLERR_NOERROR ;
 TYPE_1__* BotGoalStateFromHandle (int) ;
 int ItemWeightIndex (int ,int ) ;
 int PRT_FATAL ;
 int ReadWeightConfig (char*) ;
 TYPE_2__ botimport ;
 int itemconfig ;
 int stub1 (int ,char*) ;

int BotLoadItemWeights(int goalstate, char *filename)
{
 bot_goalstate_t *gs;

 gs = BotGoalStateFromHandle(goalstate);
 if (!gs) return BLERR_CANNOTLOADITEMWEIGHTS;

 gs->itemweightconfig = ReadWeightConfig(filename);
 if (!gs->itemweightconfig)
 {
  botimport.Print(PRT_FATAL, "couldn't load weights\n");
  return BLERR_CANNOTLOADITEMWEIGHTS;
 }

 if (!itemconfig) return BLERR_CANNOTLOADITEMWEIGHTS;

 gs->itemweightindex = ItemWeightIndex(gs->itemweightconfig, itemconfig);

 return BLERR_NOERROR;
}
