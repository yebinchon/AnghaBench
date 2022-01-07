
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ health; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_8__ {int integer; } ;


 scalar_t__ GIB_HEALTH ;
 int GibEntity (TYPE_1__*,int ) ;
 TYPE_2__ g_blood ;

void body_die( gentity_t *self, gentity_t *inflictor, gentity_t *attacker, int damage, int meansOfDeath ) {
 if ( self->health > GIB_HEALTH ) {
  return;
 }
 if ( !g_blood.integer ) {
  self->health = GIB_HEALTH+1;
  return;
 }

 GibEntity( self, 0 );
}
