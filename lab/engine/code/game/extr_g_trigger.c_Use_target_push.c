
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int origin2; } ;
struct TYPE_13__ {scalar_t__ fly_sound_debounce_time; int noise_index; TYPE_3__* client; TYPE_1__ s; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_14__ {scalar_t__ time; } ;
struct TYPE_11__ {scalar_t__ pm_type; int velocity; scalar_t__* powerups; } ;
struct TYPE_12__ {TYPE_2__ ps; } ;


 int CHAN_AUTO ;
 int G_Sound (TYPE_4__*,int ,int ) ;
 scalar_t__ PM_NORMAL ;
 size_t PW_FLIGHT ;
 int VectorCopy (int ,int ) ;
 TYPE_5__ level ;

void Use_target_push( gentity_t *self, gentity_t *other, gentity_t *activator ) {
 if ( !activator->client ) {
  return;
 }

 if ( activator->client->ps.pm_type != PM_NORMAL ) {
  return;
 }
 if ( activator->client->ps.powerups[PW_FLIGHT] ) {
  return;
 }

 VectorCopy (self->s.origin2, activator->client->ps.velocity);


 if ( activator->fly_sound_debounce_time < level.time ) {
  activator->fly_sound_debounce_time = level.time + 1500;
  G_Sound( activator, CHAN_AUTO, self->noise_index );
 }
}
