
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int origin; } ;
struct TYPE_6__ {TYPE_1__ s; int targetname; } ;
typedef TYPE_2__ gentity_t ;


 int G_FreeEntity (TYPE_2__*) ;
 int G_Printf (char*,int ) ;
 int vtos (int ) ;

void SP_path_corner( gentity_t *self ) {
 if ( !self->targetname ) {
  G_Printf ("path_corner with no targetname at %s\n", vtos(self->s.origin));
  G_FreeEntity( self );
  return;
 }

}
