
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int G_FreeEntity (int *) ;
 int G_UseTargets (int *,int *) ;

void trigger_always_think( gentity_t *ent ) {
 G_UseTargets(ent, ent);
 G_FreeEntity( ent );
}
