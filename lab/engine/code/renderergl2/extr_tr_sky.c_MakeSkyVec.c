
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_3__ {double zFar; } ;
struct TYPE_4__ {TYPE_1__ viewParms; } ;


 TYPE_2__ backEnd ;
 float sky_max ;
 float sky_min ;

__attribute__((used)) static void MakeSkyVec( float s, float t, int axis, float outSt[2], vec3_t outXYZ )
{

 static int st_to_vec[6][3] =
 {
  {3,-1,2},
  {-3,1,2},

  {1,3,2},
  {-1,-3,2},

  {-2,-1,3},
  {2,-1,-3}
 };

 vec3_t b;
 int j, k;
 float boxSize;

 boxSize = backEnd.viewParms.zFar / 1.75;
 b[0] = s*boxSize;
 b[1] = t*boxSize;
 b[2] = boxSize;

 for (j=0 ; j<3 ; j++)
 {
  k = st_to_vec[axis][j];
  if (k < 0)
  {
   outXYZ[j] = -b[-k - 1];
  }
  else
  {
   outXYZ[j] = b[k - 1];
  }
 }


 s = (s+1)*0.5;
 t = (t+1)*0.5;
 if (s < sky_min)
 {
  s = sky_min;
 }
 else if (s > sky_max)
 {
  s = sky_max;
 }

 if (t < sky_min)
 {
  t = sky_min;
 }
 else if (t > sky_max)
 {
  t = sky_max;
 }

 t = 1.0 - t;


 if ( outSt )
 {
  outSt[0] = s;
  outSt[1] = t;
 }
}
