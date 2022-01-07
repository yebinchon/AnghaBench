
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int InitShooter (int *,int ) ;
 int WP_ROCKET_LAUNCHER ;

void SP_shooter_rocket( gentity_t *ent ) {
 InitShooter( ent, WP_ROCKET_LAUNCHER );
}
