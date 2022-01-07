
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_t ;
typedef double* vec3_t ;


 double NORMAL_EPSILON ;
 int PLANE_ANYX ;
 int PLANE_ANYY ;
 int PLANE_ANYZ ;
 int PLANE_X ;
 int PLANE_Y ;
 int PLANE_Z ;
 scalar_t__ fabs (double) ;

int AAS_PlaneTypeForNormal(vec3_t normal)
{
 vec_t ax, ay, az;


 if ( (normal[0] >= 1.0 -NORMAL_EPSILON) ||
   (normal[0] <= -1.0 + NORMAL_EPSILON)) return PLANE_X;
 if ( (normal[1] >= 1.0 -NORMAL_EPSILON) ||
   (normal[1] <= -1.0 + NORMAL_EPSILON)) return PLANE_Y;
 if ( (normal[2] >= 1.0 -NORMAL_EPSILON) ||
   (normal[2] <= -1.0 + NORMAL_EPSILON)) return PLANE_Z;

 ax = fabs(normal[0]);
 ay = fabs(normal[1]);
 az = fabs(normal[2]);

 if (ax >= ay && ax >= az) return PLANE_ANYX;
 if (ay >= ax && ay >= az) return PLANE_ANYY;
 return PLANE_ANYZ;
}
