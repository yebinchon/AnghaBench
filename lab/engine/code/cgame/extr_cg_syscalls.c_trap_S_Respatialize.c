
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int CG_S_RESPATIALIZE ;
 int syscall (int ,int,int const,int *,int) ;

void trap_S_Respatialize( int entityNum, const vec3_t origin, vec3_t axis[3], int inwater ) {
 syscall( CG_S_RESPATIALIZE, entityNum, origin, axis, inwater );
}
