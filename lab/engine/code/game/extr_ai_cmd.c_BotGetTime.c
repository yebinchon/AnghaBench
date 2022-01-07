
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int subtype; scalar_t__ type; } ;
typedef TYPE_1__ bot_match_t ;


 float FloatTime () ;
 int MAX_MESSAGE_SIZE ;
 scalar_t__ MSG_FORALONGTIME ;
 scalar_t__ MSG_FORAWHILE ;
 scalar_t__ MSG_FOREVER ;
 scalar_t__ MSG_MINUTES ;
 scalar_t__ MSG_SECONDS ;
 int MTCONTEXT_TIME ;
 int ST_TIME ;
 int TIME ;
 int atof (char*) ;
 scalar_t__ trap_BotFindMatch (char*,TYPE_1__*,int ) ;
 int trap_BotMatchVariable (TYPE_1__*,int ,char*,int) ;

float BotGetTime(bot_match_t *match) {
 bot_match_t timematch;
 char timestring[MAX_MESSAGE_SIZE];
 float t;


 if (match->subtype & ST_TIME) {

  trap_BotMatchVariable(match, TIME, timestring, MAX_MESSAGE_SIZE);

  if (trap_BotFindMatch(timestring, &timematch, MTCONTEXT_TIME)) {
   if (timematch.type == MSG_FOREVER) {
    t = 99999999.0f;
   }
   else if (timematch.type == MSG_FORAWHILE) {
    t = 10 * 60;
   }
   else if (timematch.type == MSG_FORALONGTIME) {
    t = 30 * 60;
   }
   else {
    trap_BotMatchVariable(&timematch, TIME, timestring, MAX_MESSAGE_SIZE);
    if (timematch.type == MSG_MINUTES) t = atof(timestring) * 60;
    else if (timematch.type == MSG_SECONDS) t = atof(timestring);
    else t = 0;
   }

   if (t > 0) return FloatTime() + t;
  }
 }
 return 0;
}
