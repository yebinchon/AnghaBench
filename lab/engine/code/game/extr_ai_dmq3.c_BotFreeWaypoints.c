
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ bot_waypoint_t ;


 TYPE_1__* botai_freewaypoints ;

void BotFreeWaypoints(bot_waypoint_t *wp) {
 bot_waypoint_t *nextwp;

 for (; wp; wp = nextwp) {
  nextwp = wp->next;
  wp->next = botai_freewaypoints;
  botai_freewaypoints = wp;
 }
}
