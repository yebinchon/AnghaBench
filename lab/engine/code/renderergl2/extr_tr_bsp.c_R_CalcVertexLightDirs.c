
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_7__ {int surfaceType; int numVerts; TYPE_1__* verts; } ;
typedef TYPE_2__ srfBspSurface_t ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_3__ msurface_t ;
struct TYPE_9__ {int numsurfaces; TYPE_3__* surfaces; } ;
struct TYPE_6__ {int lightdir; int xyz; int normal; } ;


 int R_LightDirForPoint (int ,int ,int ,TYPE_4__*) ;
 int R_VaoPackNormal (int ,int ) ;
 int R_VaoUnpackNormal (int ,int ) ;



 TYPE_4__ s_worldData ;

void R_CalcVertexLightDirs( void )
{
 int i, k;
 msurface_t *surface;

 for(k = 0, surface = &s_worldData.surfaces[0]; k < s_worldData.numsurfaces ; k++, surface++)
 {
  srfBspSurface_t *bspSurf = (srfBspSurface_t *) surface->data;

  switch(bspSurf->surfaceType)
  {
   case 130:
   case 129:
   case 128:
    for(i = 0; i < bspSurf->numVerts; i++)
    {
     vec3_t lightDir;
     vec3_t normal;

     R_VaoUnpackNormal(normal, bspSurf->verts[i].normal);
     R_LightDirForPoint( bspSurf->verts[i].xyz, lightDir, normal, &s_worldData );
     R_VaoPackNormal(bspSurf->verts[i].lightdir, lightDir);
    }

    break;

   default:
    break;
  }
 }
}
