
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int CG_R_LIGHTFORPOINT ;
 int syscall (int ,int ,int ,int ,int ) ;

int trap_R_LightForPoint( vec3_t point, vec3_t ambientLight, vec3_t directedLight, vec3_t lightDir ) {
 return syscall( CG_R_LIGHTFORPOINT, point, ambientLight, directedLight, lightDir );
}
