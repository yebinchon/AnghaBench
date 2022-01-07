
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int sfxHandle_t ;


 int CG_S_ADDLOOPINGSOUND ;
 int syscall (int ,int,int const,int const,int ) ;

void trap_S_AddLoopingSound( int entityNum, const vec3_t origin, const vec3_t velocity, sfxHandle_t sfx ) {
 syscall( CG_S_ADDLOOPINGSOUND, entityNum, origin, velocity, sfx );
}
