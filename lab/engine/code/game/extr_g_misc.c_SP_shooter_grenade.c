
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int InitShooter (int *,int ) ;
 int WP_GRENADE_LAUNCHER ;

void SP_shooter_grenade( gentity_t *ent ) {
 InitShooter( ent, WP_GRENADE_LAUNCHER);
}
