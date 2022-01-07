
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysEvent_t ;


 int Com_GetRealEvent () ;
 int MAX_PUSHED_EVENTS ;
 int * com_pushedEvents ;
 int com_pushedEventsHead ;
 int com_pushedEventsTail ;

sysEvent_t Com_GetEvent( void ) {
 if ( com_pushedEventsHead > com_pushedEventsTail ) {
  com_pushedEventsTail++;
  return com_pushedEvents[ (com_pushedEventsTail-1) & (MAX_PUSHED_EVENTS-1) ];
 }
 return Com_GetRealEvent();
}
