
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int damage; int spawnflags; int use; int touch; int noise_index; } ;
typedef TYPE_1__ gentity_t ;


 int G_SoundIndex (char*) ;
 int InitTrigger (TYPE_1__*) ;
 int hurt_touch ;
 int hurt_use ;
 int trap_LinkEntity (TYPE_1__*) ;
 int trap_UnlinkEntity (TYPE_1__*) ;

void SP_trigger_hurt( gentity_t *self ) {
 InitTrigger (self);

 self->noise_index = G_SoundIndex( "sound/world/electro.wav" );
 self->touch = hurt_touch;

 if ( !self->damage ) {
  self->damage = 5;
 }

 self->use = hurt_use;


 if ( self->spawnflags & 1 ) {
  trap_UnlinkEntity (self);
 }
 else {
  trap_LinkEntity (self);
 }
}
