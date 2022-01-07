
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int origin; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;


 int G_SetOrigin (TYPE_2__*,int ) ;

void SP_info_notnull( gentity_t *self ){
 G_SetOrigin( self, self->s.origin );
}
