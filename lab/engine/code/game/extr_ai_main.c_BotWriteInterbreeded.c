
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_kills; int num_deaths; int gs; scalar_t__ inuse; } ;


 int MAX_CLIENTS ;
 TYPE_1__** botstates ;
 int trap_BotSaveGoalFuzzyLogic (int ,char*) ;

void BotWriteInterbreeded(char *filename) {
 float rank, bestrank;
 int i, bestbot;

 bestrank = 0;
 bestbot = -1;

 for (i = 0; i < MAX_CLIENTS; i++) {
  if ( botstates[i] && botstates[i]->inuse ) {
   rank = botstates[i]->num_kills * 2 - botstates[i]->num_deaths;
  }
  else {
   rank = -1;
  }
  if (rank > bestrank) {
   bestrank = rank;
   bestbot = i;
  }
 }
 if (bestbot >= 0) {

  trap_BotSaveGoalFuzzyLogic(botstates[bestbot]->gs, filename);
 }
}
