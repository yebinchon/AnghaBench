
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int loopSound; } ;
struct TYPE_8__ {scalar_t__ sound2to1; int soundLoop; TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_9__ {int time; } ;


 int EV_GENERAL_SOUND ;
 int G_AddEvent (TYPE_2__*,int ,scalar_t__) ;
 int MOVER_2TO1 ;
 int MatchTeam (TYPE_2__*,int ,int ) ;
 TYPE_3__ level ;

void ReturnToPos1( gentity_t *ent ) {
 MatchTeam( ent, MOVER_2TO1, level.time );


 ent->s.loopSound = ent->soundLoop;


 if ( ent->sound2to1 ) {
  G_AddEvent( ent, EV_GENERAL_SOUND, ent->sound2to1 );
 }
}
