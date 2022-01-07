
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eventSequence; int* events; int* eventParms; int pmove_framecount; } ;
typedef TYPE_1__ playerState_t ;
typedef int buf ;


 int Com_Printf (char*,int ,int,int ,int) ;
 int MAX_PS_EVENTS ;
 scalar_t__ atof (char*) ;
 int * eventnames ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;

void BG_AddPredictableEventToPlayerstate( int newEvent, int eventParm, playerState_t *ps ) {
 ps->events[ps->eventSequence & (MAX_PS_EVENTS-1)] = newEvent;
 ps->eventParms[ps->eventSequence & (MAX_PS_EVENTS-1)] = eventParm;
 ps->eventSequence++;
}
