
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int activator; } ;
typedef TYPE_1__ gentity_t ;


 int G_UseTargets (TYPE_1__*,int ) ;

void Think_Target_Delay( gentity_t *ent ) {
 G_UseTargets( ent, ent->activator );
}
