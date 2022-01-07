
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int trace_t ;
struct TYPE_9__ {scalar_t__ moverState; scalar_t__ nextthink; TYPE_2__* client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_10__ {scalar_t__ time; } ;
struct TYPE_7__ {scalar_t__* stats; } ;
struct TYPE_8__ {TYPE_1__ ps; } ;


 scalar_t__ MOVER_POS2 ;
 size_t STAT_HEALTH ;
 TYPE_4__ level ;

void Touch_Plat( gentity_t *ent, gentity_t *other, trace_t *trace ) {
 if ( !other->client || other->client->ps.stats[STAT_HEALTH] <= 0 ) {
  return;
 }


 if ( ent->moverState == MOVER_POS2 ) {
  ent->nextthink = level.time + 1000;
 }
}
