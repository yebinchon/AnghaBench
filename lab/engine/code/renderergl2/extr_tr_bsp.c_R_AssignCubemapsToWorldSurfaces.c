
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numsurfaces; TYPE_3__* surfaces; } ;
typedef TYPE_2__ world_t ;
typedef float* vec3_t ;
struct TYPE_5__ {int type; float** bounds; int localOrigin; } ;
struct TYPE_7__ {int cubemapIndex; TYPE_1__ cullinfo; } ;
typedef TYPE_3__ msurface_t ;


 int CULLINFO_BOX ;
 int CULLINFO_SPHERE ;
 int R_CubemapForPoint (float*) ;
 int VectorCopy (int ,float*) ;
 TYPE_2__ s_worldData ;

void R_AssignCubemapsToWorldSurfaces(void)
{
 world_t *w;
 int i;

 w = &s_worldData;

 for (i = 0; i < w->numsurfaces; i++)
 {
  msurface_t *surf = &w->surfaces[i];
  vec3_t surfOrigin;

  if (surf->cullinfo.type & CULLINFO_SPHERE)
  {
   VectorCopy(surf->cullinfo.localOrigin, surfOrigin);
  }
  else if (surf->cullinfo.type & CULLINFO_BOX)
  {
   surfOrigin[0] = (surf->cullinfo.bounds[0][0] + surf->cullinfo.bounds[1][0]) * 0.5f;
   surfOrigin[1] = (surf->cullinfo.bounds[0][1] + surf->cullinfo.bounds[1][1]) * 0.5f;
   surfOrigin[2] = (surf->cullinfo.bounds[0][2] + surf->cullinfo.bounds[1][2]) * 0.5f;
  }
  else
  {

   continue;
  }

  surf->cubemapIndex = R_CubemapForPoint(surfOrigin);

 }
}
