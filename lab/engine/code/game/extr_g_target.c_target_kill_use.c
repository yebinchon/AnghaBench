
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int DAMAGE_NO_PROTECTION ;
 int G_Damage (int *,int *,int *,int *,int *,int,int ,int ) ;
 int MOD_TELEFRAG ;

void target_kill_use( gentity_t *self, gentity_t *other, gentity_t *activator ) {
 G_Damage ( activator, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 100000, DAMAGE_NO_PROTECTION, MOD_TELEFRAG);
}
