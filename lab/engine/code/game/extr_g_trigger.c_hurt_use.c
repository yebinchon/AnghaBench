
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ linked; } ;
struct TYPE_9__ {TYPE_1__ r; } ;
typedef TYPE_2__ gentity_t ;


 int trap_LinkEntity (TYPE_2__*) ;
 int trap_UnlinkEntity (TYPE_2__*) ;

void hurt_use( gentity_t *self, gentity_t *other, gentity_t *activator ) {
 if ( self->r.linked ) {
  trap_UnlinkEntity( self );
 } else {
  trap_LinkEntity( self );
 }
}
