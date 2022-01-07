
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qboolean ;
typedef int cplane_t ;
struct TYPE_3__ {int flags; int * frustum; } ;
struct TYPE_4__ {TYPE_1__ viewParms; } ;


 int BoxOnPlaneSide (int ,int ,int *) ;
 int CULL_CLIP ;
 int CULL_IN ;
 int CULL_OUT ;
 int VPF_FARPLANEFRUSTUM ;
 int qfalse ;
 int qtrue ;
 TYPE_2__ tr ;

int R_CullBox(vec3_t worldBounds[2]) {
 int i;
 cplane_t *frust;
 qboolean anyClip;
 int r, numPlanes;

 numPlanes = (tr.viewParms.flags & VPF_FARPLANEFRUSTUM) ? 5 : 4;


 anyClip = qfalse;
 for(i = 0; i < numPlanes; i++)
 {
  frust = &tr.viewParms.frustum[i];

  r = BoxOnPlaneSide(worldBounds[0], worldBounds[1], frust);

  if(r == 2)
  {

   return CULL_OUT;
  }
  if(r == 3)
  {
   anyClip = qtrue;
  }
 }

 if(!anyClip)
 {

  return CULL_IN;
 }


 return CULL_CLIP;
}
