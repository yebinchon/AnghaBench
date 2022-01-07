
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int clipHandle_t ;


 int CG_CM_TEMPBOXMODEL ;
 int syscall (int ,int const,int const) ;

clipHandle_t trap_CM_TempBoxModel( const vec3_t mins, const vec3_t maxs ) {
 return syscall( CG_CM_TEMPBOXMODEL, mins, maxs );
}
