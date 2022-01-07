
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int splashDamage; int damage; } ;
typedef TYPE_1__ gentity_t ;


 TYPE_1__* fire_rocket (TYPE_1__*,int ,int ) ;
 int forward ;
 int muzzle ;
 int s_quadFactor ;

void Weapon_RocketLauncher_Fire (gentity_t *ent) {
 gentity_t *m;

 m = fire_rocket (ent, muzzle, forward);
 m->damage *= s_quadFactor;
 m->splashDamage *= s_quadFactor;


}
