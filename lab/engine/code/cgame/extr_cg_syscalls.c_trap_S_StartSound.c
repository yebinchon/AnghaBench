
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int sfxHandle_t ;


 int CG_S_STARTSOUND ;
 int syscall (int ,int ,int,int,int ) ;

void trap_S_StartSound( vec3_t origin, int entityNum, int entchannel, sfxHandle_t sfx ) {
 syscall( CG_S_STARTSOUND, origin, entityNum, entchannel, sfx );
}
