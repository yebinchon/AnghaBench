
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef float* vec4_t ;
typedef float* vec3_t ;
struct TYPE_7__ {int compileFlags; float* lightmapAxis; int lightmapSampleSize; } ;
typedef TYPE_2__ shaderInfo_t ;
struct TYPE_8__ {scalar_t__ type; int numVerts; size_t planeNum; float** lightmapVecs; float* lightmapAxis; int sampleSize; int lightmapScale; TYPE_2__* shaderInfo; TYPE_1__* verts; void* planar; int maxs; int mins; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_9__ {float* normal; float dist; } ;
struct TYPE_6__ {float* xyz; float* normal; } ;


 int AddPointToBounds (float*,int ,int ) ;
 int C_VERTEXLIT ;
 int CalcLightmapAxis (float*,float*) ;
 int ClearBounds (int ,int ) ;
 float DotProduct (float*,float*) ;
 int FindFloatPlane (float*,float,int,float**) ;
 scalar_t__ PLANAR_EPSILON ;
 int SHADER_MAX_VERTEXES ;
 scalar_t__ SURFACE_BAD ;
 scalar_t__ SURFACE_FACE ;
 scalar_t__ SURFACE_FORCED_META ;
 scalar_t__ SURFACE_PATCH ;
 scalar_t__ SURFACE_TRIANGLES ;
 int VectorClear (float*) ;
 int VectorCopy (float*,float*) ;
 float VectorLength (float*) ;
 scalar_t__ fabs (float) ;
 TYPE_4__* mapplanes ;
 void* qfalse ;
 void* qtrue ;
 int sampleSize ;

void ClassifySurfaces( int numSurfs, mapDrawSurface_t *ds ){
 int i, bestAxis;
 float dist;
 vec4_t plane;
 shaderInfo_t *si;
 static vec3_t axii[ 6 ] =
 {
  { 0, 0, -1 },
  { 0, 0, 1 },
  { -1, 0, 0 },
  { 1, 0, 0 },
  { 0, -1, 0 },
  { 0, 1, 0 }
 };



 for ( ; numSurfs > 0; numSurfs--, ds++ )
 {

  if ( ds->type == SURFACE_BAD || ds->numVerts <= 0 ) {
   continue;
  }


  si = ds->shaderInfo;





  if ( ds->type != SURFACE_PATCH && ds->type != SURFACE_FACE ) {
   if ( ds->numVerts > SHADER_MAX_VERTEXES ) {
    ds->type = SURFACE_FORCED_META;
   }
  }






  ClearBounds( ds->mins, ds->maxs );
  for ( i = 0; i < ds->numVerts; i++ )
   AddPointToBounds( ds->verts[ i ].xyz, ds->mins, ds->maxs );


  if ( ds->planeNum >= 0 ) {
   VectorCopy( mapplanes[ ds->planeNum ].normal, plane );
   plane[ 3 ] = mapplanes[ ds->planeNum ].dist;
  }


  else
  {
   VectorClear( plane );
   plane[ 3 ] = 0.0f;
   for ( i = 0; i < ds->numVerts; i++ )
   {
    if ( ds->verts[ i ].normal[ 0 ] != 0.0f && ds->verts[ i ].normal[ 1 ] != 0.0f && ds->verts[ i ].normal[ 2 ] != 0.0f ) {
     VectorCopy( ds->verts[ i ].normal, plane );
     plane[ 3 ] = DotProduct( ds->verts[ i ].xyz, plane );
     break;
    }
   }
  }


  if ( VectorLength( plane ) <= 0.0f ) {
   ds->planar = qfalse;
   ds->planeNum = -1;
  }
  else
  {

   ds->planar = qtrue;


   for ( i = 0; i < ds->numVerts; i++ )
   {

    dist = DotProduct( ds->verts[ i ].xyz, plane ) - plane[ 3 ];
    if ( fabs( dist ) > PLANAR_EPSILON ) {





     ds->planar = qfalse;
     break;
    }
   }
  }


  if ( ds->planar ) {
   if ( ds->planeNum < 0 ) {
    ds->planeNum = FindFloatPlane( plane, plane[ 3 ], 1, &ds->verts[ 0 ].xyz );
   }
   VectorCopy( plane, ds->lightmapVecs[ 2 ] );
  }
  else
  {
   ds->planeNum = -1;
   VectorClear( ds->lightmapVecs[ 2 ] );


  }






  if ( si->compileFlags & C_VERTEXLIT || ds->type == SURFACE_TRIANGLES ) {
   VectorClear( ds->lightmapAxis );

   ds->sampleSize = 0;
   continue;
  }


  if ( si->lightmapAxis[ 0 ] || si->lightmapAxis[ 1 ] || si->lightmapAxis[ 2 ] ) {
   VectorCopy( si->lightmapAxis, ds->lightmapAxis );
  }
  else if ( ds->type == SURFACE_FORCED_META ) {
   VectorClear( ds->lightmapAxis );
  }
  else if ( ds->planar ) {
   CalcLightmapAxis( plane, ds->lightmapAxis );
  }
  else
  {

   for ( bestAxis = 0; bestAxis < 6; bestAxis++ )
   {
    for ( i = 0; i < ds->numVerts && bestAxis < 6; i++ )
    {



     if ( DotProduct( ds->verts[ i ].normal, axii[ bestAxis ] ) < 0.25f ) {
      break;
     }
    }

    if ( i == ds->numVerts ) {
     break;
    }
   }


   if ( bestAxis < 6 ) {


    VectorCopy( axii[ bestAxis ], ds->lightmapAxis );
   }




  }


  if ( ds->sampleSize <= 0 ) {
   ds->sampleSize = sampleSize;
   if ( ds->shaderInfo->lightmapSampleSize ) {
    ds->sampleSize = ds->shaderInfo->lightmapSampleSize;
   }
   if ( ds->lightmapScale > 0 ) {
    ds->sampleSize *= ds->lightmapScale;
   }
   if ( ds->sampleSize <= 0 ) {
    ds->sampleSize = 1;
   }
   else if ( ds->sampleSize > 16384 ) {
    ds->sampleSize = 16384;
   }
  }
 }
}
