
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vec3_t ;
typedef int qboolean ;


 int AngleNormalize180 (int ) ;
 int InverseRotation (float const*,int *,int ) ;
 int VectorSubtract (float const*,float const*,int *) ;
 float fabs (int ) ;
 int qfalse ;
 int qtrue ;
 int vectoangles (int *,int *) ;

qboolean InFov(const float start[3], const float end[3], const float angles[3], float fov) {
 vec3_t dir, view_angles;
 float hfov = fov * 0.5;
 VectorSubtract( end, start, dir );
 InverseRotation( angles, dir, qfalse );
 vectoangles( dir, view_angles );
 return fabs(AngleNormalize180(view_angles[0])) < hfov &&
     fabs(AngleNormalize180(view_angles[1])) < hfov ? qtrue : qfalse;
}
