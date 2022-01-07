
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int qboolean ;


 int CG_R_INPVS ;
 int syscall (int ,int const,int const) ;

qboolean trap_R_inPVS( const vec3_t p1, const vec3_t p2 ) {
 return syscall( CG_R_INPVS, p1, p2 );
}
