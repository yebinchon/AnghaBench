
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int numpoints; float** p; } ;
typedef TYPE_2__ winding_t ;
typedef float* vec3_t ;
struct TYPE_14__ {int numFacets; float** bounds; TYPE_1__* planes; TYPE_4__* facets; } ;
typedef TYPE_3__ patchCollide_t ;
struct TYPE_15__ {int numBorders; int* borderPlanes; int* borderInward; int surfacePlane; } ;
typedef TYPE_4__ facet_t ;
struct TYPE_16__ {int integer; scalar_t__ value; } ;
typedef TYPE_5__ cvar_t ;
struct TYPE_12__ {int plane; } ;


 TYPE_2__* BaseWindingForPlane (float*,float) ;
 int BotDrawDebugPolygons (void (*) (int,int,float*),int) ;
 int ChopWindingInPlace (TYPE_2__**,float*,float,float) ;
 int Com_Printf (char*) ;
 TYPE_5__* Cvar_Get (char*,char*,int ) ;
 int DotProduct (float*,float*) ;
 int FreeWinding (TYPE_2__*) ;
 int Vector4Copy (int ,float*) ;
 int VectorCopy (int ,float*) ;
 int VectorNegate (float*,float*) ;
 int VectorSubtract (int ,float*,float*) ;
 int * debugBlockPoints ;
 TYPE_4__* debugFacet ;
 TYPE_3__* debugPatchCollide ;
 scalar_t__ fabs (int ) ;
 int qfalse ;
 int vec3_origin ;

void CM_DrawDebugSurface( void (*drawPoly)(int color, int numPoints, float *points) ) {
 static cvar_t *cv;

 static cvar_t *cv2;

 const patchCollide_t *pc;
 facet_t *facet;
 winding_t *w;
 int i, j, k, n;
 int curplanenum, planenum, curinward, inward;
 float plane[4];
 vec3_t mins = {-15, -15, -28}, maxs = {15, 15, 28};

 vec3_t v1, v2;


 if ( !cv2 )
 {
  cv2 = Cvar_Get( "r_debugSurface", "0", 0 );
 }

 if (cv2->integer != 1)
 {
  BotDrawDebugPolygons(drawPoly, cv2->integer);
  return;
 }


 if ( !debugPatchCollide ) {
  return;
 }


 if ( !cv ) {
  cv = Cvar_Get( "cm_debugSize", "2", 0 );
 }

 pc = debugPatchCollide;

 for ( i = 0, facet = pc->facets ; i < pc->numFacets ; i++, facet++ ) {

  for ( k = 0 ; k < facet->numBorders + 1; k++ ) {

   if (k < facet->numBorders) {
    planenum = facet->borderPlanes[k];
    inward = facet->borderInward[k];
   }
   else {
    planenum = facet->surfacePlane;
    inward = qfalse;

   }

   Vector4Copy( pc->planes[ planenum ].plane, plane );


   if ( inward ) {
    VectorSubtract( vec3_origin, plane, plane );
    plane[3] = -plane[3];
   }

   plane[3] += cv->value;

   for (n = 0; n < 3; n++)
   {
    if (plane[n] > 0) v1[n] = maxs[n];
    else v1[n] = mins[n];
   }
   VectorNegate(plane, v2);
   plane[3] += fabs(DotProduct(v1, v2));


   w = BaseWindingForPlane( plane, plane[3] );
   for ( j = 0 ; j < facet->numBorders + 1 && w; j++ ) {

    if (j < facet->numBorders) {
     curplanenum = facet->borderPlanes[j];
     curinward = facet->borderInward[j];
    }
    else {
     curplanenum = facet->surfacePlane;
     curinward = qfalse;

    }

    if (curplanenum == planenum) continue;

    Vector4Copy( pc->planes[ curplanenum ].plane, plane );
    if ( !curinward ) {
     VectorSubtract( vec3_origin, plane, plane );
     plane[3] = -plane[3];
    }

     plane[3] -= cv->value;

    for (n = 0; n < 3; n++)
    {
     if (plane[n] > 0) v1[n] = maxs[n];
     else v1[n] = mins[n];
    }
    VectorNegate(plane, v2);
    plane[3] -= fabs(DotProduct(v1, v2));

    ChopWindingInPlace( &w, plane, plane[3], 0.1f );
   }
   if ( w ) {
    if ( facet == debugFacet ) {
     drawPoly( 4, w->numpoints, w->p[0] );

    } else {
     drawPoly( 1, w->numpoints, w->p[0] );
    }
    FreeWinding( w );
   }
   else
    Com_Printf("winding chopped away by border planes\n");
  }
 }


 {
  vec3_t v[3];

  VectorCopy( debugBlockPoints[0], v[0] );
  VectorCopy( debugBlockPoints[1], v[1] );
  VectorCopy( debugBlockPoints[2], v[2] );
  drawPoly( 2, 3, v[0] );

  VectorCopy( debugBlockPoints[2], v[0] );
  VectorCopy( debugBlockPoints[3], v[1] );
  VectorCopy( debugBlockPoints[0], v[2] );
  drawPoly( 2, 3, v[0] );
 }
}
