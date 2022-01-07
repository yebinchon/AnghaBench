
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pshadowBits; int dlightBits; int indexes; int numIndexes; int verts; int numVerts; } ;
typedef TYPE_1__ srfBspSurface_t ;


 scalar_t__ RB_SurfaceVaoCached (int ,int ,int ,int ,int ,int ) ;
 int RB_SurfaceVertsAndIndexes (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void RB_SurfaceTriangles( srfBspSurface_t *srf ) {
 if (RB_SurfaceVaoCached(srf->numVerts, srf->verts, srf->numIndexes,
  srf->indexes, srf->dlightBits, srf->pshadowBits))
 {
  return;
 }

 RB_SurfaceVertsAndIndexes(srf->numVerts, srf->verts, srf->numIndexes,
   srf->indexes, srf->dlightBits, srf->pshadowBits);
}
