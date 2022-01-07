
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ evType; int evTime; } ;
typedef TYPE_1__ sysEvent_t ;


 TYPE_1__ Com_GetRealEvent () ;
 int Com_PushEvent (TYPE_1__*) ;
 scalar_t__ SE_NONE ;

int Com_Milliseconds (void) {
 sysEvent_t ev;


 do {

  ev = Com_GetRealEvent();
  if ( ev.evType != SE_NONE ) {
   Com_PushEvent( &ev );
  }
 } while ( ev.evType != SE_NONE );

 return ev.evTime;
}
