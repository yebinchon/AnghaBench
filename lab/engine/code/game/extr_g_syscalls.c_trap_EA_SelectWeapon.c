
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_EA_SELECT_WEAPON ;
 int syscall (int ,int,int) ;

void trap_EA_SelectWeapon(int client, int weapon) {
 syscall( BOTLIB_EA_SELECT_WEAPON, client, weapon );
}
