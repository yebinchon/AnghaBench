
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int moverState; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_6__ {int time; } ;


 int MatchTeam (TYPE_1__*,int ,int ) ;
 TYPE_2__ level ;

void Think_MatchTeam( gentity_t *ent ) {
 MatchTeam( ent, ent->moverState, level.time );
}
