
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int splashDamage; int damage; } ;
typedef TYPE_1__ gentity_t ;


 int VectorNormalize (float*) ;
 TYPE_1__* fire_grenade (TYPE_1__*,int ,float*) ;
 float* forward ;
 int muzzle ;
 int s_quadFactor ;

void weapon_grenadelauncher_fire (gentity_t *ent) {
 gentity_t *m;


 forward[2] += 0.2f;
 VectorNormalize( forward );

 m = fire_grenade (ent, muzzle, forward);
 m->damage *= s_quadFactor;
 m->splashDamage *= s_quadFactor;


}
