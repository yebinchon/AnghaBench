
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_11__ {int numBSPBrushes; int firstBSPBrush; int numBSPSurfaces; int firstBSPSurface; } ;
typedef TYPE_1__ bspModel_t ;
struct TYPE_12__ {scalar_t__ surfaceType; } ;
typedef TYPE_2__ bspDrawSurface_t ;
typedef int bspBrush_t ;
struct TYPE_15__ {int dist; int normal; } ;
struct TYPE_14__ {struct TYPE_14__* original; scalar_t__ entityNum; } ;
struct TYPE_13__ {int * hash_chain; int normal; int type; int dist; } ;
typedef int FILE ;


 TYPE_4__* AllocBrush (int) ;
 int ConvertBrush (int *,int,int *,int ) ;
 int ConvertPatch (int *,int,TYPE_2__*,int ) ;
 scalar_t__ MST_PATCH ;
 int PlaneTypeForNormal (int ) ;
 int VectorCopy (int ,int ) ;
 int * bspBrushes ;
 TYPE_2__* bspDrawSurfaces ;
 TYPE_6__* bspPlanes ;
 TYPE_4__* buildBrush ;
 int free (TYPE_4__*) ;
 TYPE_3__* mapplanes ;
 int numBSPPlanes ;
 int nummapplanes ;

__attribute__((used)) static void ConvertModel( FILE *f, bspModel_t *model, int modelNum, vec3_t origin ){
 int i, num;
 bspBrush_t *brush;
 bspDrawSurface_t *ds;



 nummapplanes = numBSPPlanes;
 for ( i = 0; i < numBSPPlanes; i++ )
 {
  VectorCopy( bspPlanes[ i ].normal, mapplanes[ i ].normal );
  mapplanes[ i ].dist = bspPlanes[ i ].dist;
  mapplanes[ i ].type = PlaneTypeForNormal( mapplanes[ i ].normal );
  mapplanes[ i ].hash_chain = ((void*)0);
 }


 buildBrush = AllocBrush( 512 );
 buildBrush->entityNum = 0;
 buildBrush->original = buildBrush;


 for ( i = 0; i < model->numBSPBrushes; i++ )
 {
  num = i + model->firstBSPBrush;
  brush = &bspBrushes[ num ];
  ConvertBrush( f, num, brush, origin );
 }


 free( buildBrush );


 for ( i = 0; i < model->numBSPSurfaces; i++ )
 {
  num = i + model->firstBSPSurface;
  ds = &bspDrawSurfaces[ num ];


  if ( ds->surfaceType == MST_PATCH ) {
   ConvertPatch( f, num, ds, origin );
  }
 }
}
