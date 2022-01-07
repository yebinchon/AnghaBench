
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int CG_S_UPDATEENTITYPOSITION ;
 int syscall (int ,int,int const) ;

void trap_S_UpdateEntityPosition( int entityNum, const vec3_t origin ) {
 syscall( CG_S_UPDATEENTITYPOSITION, entityNum, origin );
}
