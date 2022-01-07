
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AAS_POINT_AREA_NUM ;
 int syscall (int ,int ) ;

int trap_AAS_PointAreaNum(vec3_t point) {
 return syscall( BOTLIB_AAS_POINT_AREA_NUM, point );
}
