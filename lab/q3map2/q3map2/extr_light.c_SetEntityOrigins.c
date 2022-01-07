
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vec3_t ;
typedef int entity_t ;
struct TYPE_10__ {int numBSPSurfaces; int firstBSPSurface; } ;
typedef TYPE_1__ bspModel_t ;
typedef int bspDrawVert_t ;
struct TYPE_11__ {int numVerts; int firstVert; } ;
typedef TYPE_2__ bspDrawSurface_t ;
struct TYPE_13__ {int xyz; } ;
struct TYPE_12__ {int xyz; } ;


 int GetVectorForKey (int *,char*,int ) ;
 char* ValueForKey (int *,char*) ;
 int VectorAdd (int ,int ,int ) ;
 int atoi (char const*) ;
 TYPE_2__* bspDrawSurfaces ;
 TYPE_6__* bspDrawVerts ;
 TYPE_1__* bspModels ;
 int * entities ;
 int memcpy (TYPE_3__*,TYPE_6__*,int) ;
 int numBSPDrawVerts ;
 int numEntities ;
 TYPE_3__* safe_malloc (int) ;
 TYPE_3__* yDrawVerts ;

void SetEntityOrigins( void ){
 int i, j, k, f;
 entity_t *e;
 vec3_t origin;
 const char *key;
 int modelnum;
 bspModel_t *dm;
 bspDrawSurface_t *ds;



 yDrawVerts = safe_malloc( numBSPDrawVerts * sizeof( bspDrawVert_t ) );
 memcpy( yDrawVerts, bspDrawVerts, numBSPDrawVerts * sizeof( bspDrawVert_t ) );


 for ( i = 0; i < numEntities; i++ )
 {

  e = &entities[ i ];
  key = ValueForKey( e, "model" );
  if ( key[ 0 ] != '*' ) {
   continue;
  }
  modelnum = atoi( key + 1 );
  dm = &bspModels[ modelnum ];


  key = ValueForKey( e, "origin" );
  if ( key[ 0 ] == '\0' ) {
   continue;
  }
  GetVectorForKey( e, "origin", origin );


  for ( j = 0; j < dm->numBSPSurfaces; j++ )
  {

   ds = &bspDrawSurfaces[ dm->firstBSPSurface + j ];


   for ( k = 0; k < ds->numVerts; k++ )
   {
    f = ds->firstVert + k;
    VectorAdd( origin, bspDrawVerts[ f ].xyz, yDrawVerts[ f ].xyz );
   }
  }
 }
}
