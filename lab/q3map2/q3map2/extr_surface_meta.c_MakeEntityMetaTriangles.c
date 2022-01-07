
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ numVerts; int type; TYPE_1__* shaderInfo; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_12__ {int firstDrawSurf; } ;
typedef TYPE_3__ entity_t ;
struct TYPE_10__ {scalar_t__ forceMeta; scalar_t__ autosprite; } ;


 int I_FloatTime () ;






 int SYS_VRB ;
 int StripFaceSurface (TYPE_2__*) ;
 int SurfaceToMetaTriangles (TYPE_2__*) ;
 int Sys_FPrintf (int ,char*,...) ;
 int TidyEntitySurfaces (TYPE_3__*) ;
 int TriangulatePatchSurface (TYPE_2__*) ;
 TYPE_2__* mapDrawSurfs ;
 scalar_t__ meta ;
 int numFanSurfaces ;
 int numMapDrawSurfs ;
 int numMetaSurfaces ;
 int numMetaTriangles ;
 int numMetaVerts ;
 int numPatchMetaSurfaces ;
 int numStripSurfaces ;
 scalar_t__ qfalse ;

void MakeEntityMetaTriangles( entity_t *e ){
 int i, f, fOld, start;
 mapDrawSurface_t *ds;



 Sys_FPrintf( SYS_VRB, "--- MakeEntityMetaTriangles ---\n" );


 fOld = -1;
 start = I_FloatTime();


 for ( i = e->firstDrawSurf; i < numMapDrawSurfs; i++ )
 {

  f = 10 * ( i - e->firstDrawSurf ) / ( numMapDrawSurfs - e->firstDrawSurf );
  if ( f != fOld ) {
   fOld = f;
   Sys_FPrintf( SYS_VRB, "%d...", f );
  }


  ds = &mapDrawSurfs[ i ];
  if ( ds->numVerts <= 0 ) {
   continue;
  }


  if ( ds->shaderInfo->autosprite ) {
   continue;
  }


  if ( meta == qfalse && ds->shaderInfo->forceMeta == qfalse ) {
   continue;
  }


  switch ( ds->type )
  {
  case 132:
  case 133:
   StripFaceSurface( ds );
   SurfaceToMetaTriangles( ds );
   break;

  case 129:
   TriangulatePatchSurface( ds );
   break;

  case 128:
   break;

  case 131:
  case 130:
   SurfaceToMetaTriangles( ds );
   break;

  default:
   break;
  }
 }


 if ( ( numMapDrawSurfs - e->firstDrawSurf ) ) {
  Sys_FPrintf( SYS_VRB, " (%d)\n", (int) ( I_FloatTime() - start ) );
 }


 Sys_FPrintf( SYS_VRB, "%9d total meta surfaces\n", numMetaSurfaces );
 Sys_FPrintf( SYS_VRB, "%9d stripped surfaces\n", numStripSurfaces );
 Sys_FPrintf( SYS_VRB, "%9d fanned surfaces\n", numFanSurfaces );
 Sys_FPrintf( SYS_VRB, "%9d patch meta surfaces\n", numPatchMetaSurfaces );
 Sys_FPrintf( SYS_VRB, "%9d meta verts\n", numMetaVerts );
 Sys_FPrintf( SYS_VRB, "%9d meta triangles\n", numMetaTriangles );


 TidyEntitySurfaces( e );
}
