
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int eType; } ;
struct TYPE_7__ {int svFlags; } ;
struct TYPE_9__ {int spawnflags; int touch; TYPE_2__ s; TYPE_1__ r; } ;
typedef TYPE_3__ gentity_t ;


 int ET_TELEPORT_TRIGGER ;
 int G_SoundIndex (char*) ;
 int InitTrigger (TYPE_3__*) ;
 int SVF_NOCLIENT ;
 int trap_LinkEntity (TYPE_3__*) ;
 int trigger_teleporter_touch ;

void SP_trigger_teleport( gentity_t *self ) {
 InitTrigger (self);



 if ( self->spawnflags & 1 ) {
  self->r.svFlags |= SVF_NOCLIENT;
 } else {
  self->r.svFlags &= ~SVF_NOCLIENT;
 }


 G_SoundIndex("sound/world/jumppad.wav");

 self->s.eType = ET_TELEPORT_TRIGGER;
 self->touch = trigger_teleporter_touch;

 trap_LinkEntity (self);
}
