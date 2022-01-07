
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int member_0; int member_1; int member_2; } ;
typedef TYPE_2__ vec3_t ;
struct TYPE_18__ {scalar_t__ numVerts; scalar_t__* mins; scalar_t__* maxs; int type; TYPE_1__* shaderInfo; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_19__ {int firstDrawSurf; int origin; } ;
typedef TYPE_4__ entity_t ;
struct TYPE_20__ {scalar_t__* center; scalar_t__ radius; } ;
typedef TYPE_5__ decalProjector_t ;
struct TYPE_16__ {int compileFlags; scalar_t__ autosprite; } ;


 int C_NOMARKS ;
 int I_FloatTime () ;
 int ProjectDecalOntoFace (TYPE_5__*,TYPE_3__*) ;
 int ProjectDecalOntoPatch (TYPE_5__*,TYPE_3__*) ;
 int ProjectDecalOntoTriangles (TYPE_5__*,TYPE_3__*) ;





 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,...) ;
 int TransformDecalProjector (int *,TYPE_2__*,int ,TYPE_5__*) ;
 int VectorClear (int ) ;
 int VectorCopy (int ,int ) ;
 int entityOrigin ;
 TYPE_3__* mapDrawSurfs ;
 int numDecalSurfaces ;
 int numMapDrawSurfs ;
 int numProjectors ;
 int * projectors ;

void MakeEntityDecals( entity_t *e ){
 int i, j, k, f, fOld, start;
 decalProjector_t dp;
 mapDrawSurface_t *ds;
 vec3_t identityAxis[ 3 ] = { { 1, 0, 0 }, { 0, 1, 0 }, { 0, 0, 1 } };



 Sys_FPrintf( SYS_VRB, "--- MakeEntityDecals ---\n" );


 VectorCopy( e->origin, entityOrigin );


 VectorClear( entityOrigin );


 fOld = -1;
 start = I_FloatTime();


 for ( i = 0; i < numProjectors; i++ )
 {

  f = 10 * i / numProjectors;
  if ( f != fOld ) {
   fOld = f;
   Sys_FPrintf( SYS_VRB, "%d...", f );
  }


  TransformDecalProjector( &projectors[ i ], identityAxis, e->origin, &dp );


  for ( j = e->firstDrawSurf; j < numMapDrawSurfs; j++ )
  {

   ds = &mapDrawSurfs[ j ];
   if ( ds->numVerts <= 0 ) {
    continue;
   }


   if ( ds->shaderInfo->autosprite || ( ds->shaderInfo->compileFlags & C_NOMARKS ) ) {
    continue;
   }


   for ( k = 0; k < 3; k++ )
    if ( ds->mins[ k ] >= ( dp.center[ k ] + dp.radius ) ||
      ds->maxs[ k ] <= ( dp.center[ k ] - dp.radius ) ) {
     break;
    }
   if ( k < 3 ) {
    continue;
   }


   switch ( ds->type )
   {
   case 132:
    ProjectDecalOntoFace( &dp, ds );
    break;

   case 129:
    ProjectDecalOntoPatch( &dp, ds );
    break;

   case 128:
   case 131:
   case 130:
    ProjectDecalOntoTriangles( &dp, ds );
    break;

   default:
    break;
   }
  }
 }


 Sys_FPrintf( SYS_VRB, " (%d)\n", (int) ( I_FloatTime() - start ) );


 Sys_FPrintf( SYS_VRB, "%9d decal surfaces\n", numDecalSurfaces );
}
