
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AAS_SWIMMING ;
 int syscall (int ,int ) ;

int trap_AAS_Swimming(vec3_t origin) {
 return syscall( BOTLIB_AAS_SWIMMING, origin );
}
