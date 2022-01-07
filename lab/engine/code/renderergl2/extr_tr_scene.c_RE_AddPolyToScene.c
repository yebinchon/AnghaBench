
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_10__ {int numVerts; int fogIndex; TYPE_8__* verts; scalar_t__ hShader; int surfaceType; } ;
typedef TYPE_2__ srfPoly_t ;
typedef scalar_t__ qhandle_t ;
typedef int polyVert_t ;
struct TYPE_11__ {scalar_t__** bounds; } ;
typedef TYPE_3__ fog_t ;
struct TYPE_16__ {int* modulate; int xyz; } ;
struct TYPE_15__ {TYPE_8__* polyVerts; TYPE_2__* polys; } ;
struct TYPE_14__ {scalar_t__ hardwareType; } ;
struct TYPE_13__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_12__ {TYPE_1__* world; int registered; } ;
struct TYPE_9__ {int numfogs; TYPE_3__* fogs; } ;


 int AddPointToBounds (int ,scalar_t__*,scalar_t__*) ;
 int Com_Memcpy (TYPE_8__*,int const*,int) ;
 scalar_t__ GLHW_RAGEPRO ;
 int PRINT_DEVELOPER ;
 int SF_POLY ;
 int VectorCopy (int ,scalar_t__*) ;
 TYPE_7__* backEndData ;
 TYPE_6__ glConfig ;
 size_t max_polys ;
 int max_polyverts ;
 size_t r_numpolys ;
 int r_numpolyverts ;
 TYPE_5__ ri ;
 int stub1 (int ,char*) ;
 TYPE_4__ tr ;

void RE_AddPolyToScene( qhandle_t hShader, int numVerts, const polyVert_t *verts, int numPolys ) {
 srfPoly_t *poly;
 int i, j;
 int fogIndex;
 fog_t *fog;
 vec3_t bounds[2];

 if ( !tr.registered ) {
  return;
 }

 if ( !hShader ) {




 }

 for ( j = 0; j < numPolys; j++ ) {
  if ( r_numpolyverts + numVerts > max_polyverts || r_numpolys >= max_polys ) {






   ri.Printf( PRINT_DEVELOPER, "WARNING: RE_AddPolyToScene: r_max_polys or r_max_polyverts reached\n");
   return;
  }

  poly = &backEndData->polys[r_numpolys];
  poly->surfaceType = SF_POLY;
  poly->hShader = hShader;
  poly->numVerts = numVerts;
  poly->verts = &backEndData->polyVerts[r_numpolyverts];

  Com_Memcpy( poly->verts, &verts[numVerts*j], numVerts * sizeof( *verts ) );

  if ( glConfig.hardwareType == GLHW_RAGEPRO ) {
   poly->verts->modulate[0] = 255;
   poly->verts->modulate[1] = 255;
   poly->verts->modulate[2] = 255;
   poly->verts->modulate[3] = 255;
  }

  r_numpolys++;
  r_numpolyverts += numVerts;


  if ( tr.world == ((void*)0) ) {
   fogIndex = 0;
  }

  else if ( tr.world->numfogs == 1 ) {
   fogIndex = 0;
  } else {

   VectorCopy( poly->verts[0].xyz, bounds[0] );
   VectorCopy( poly->verts[0].xyz, bounds[1] );
   for ( i = 1 ; i < poly->numVerts ; i++ ) {
    AddPointToBounds( poly->verts[i].xyz, bounds[0], bounds[1] );
   }
   for ( fogIndex = 1 ; fogIndex < tr.world->numfogs ; fogIndex++ ) {
    fog = &tr.world->fogs[fogIndex];
    if ( bounds[1][0] >= fog->bounds[0][0]
     && bounds[1][1] >= fog->bounds[0][1]
     && bounds[1][2] >= fog->bounds[0][2]
     && bounds[0][0] <= fog->bounds[1][0]
     && bounds[0][1] <= fog->bounds[1][1]
     && bounds[0][2] <= fog->bounds[1][2] ) {
     break;
    }
   }
   if ( fogIndex == tr.world->numfogs ) {
    fogIndex = 0;
   }
  }
  poly->fogIndex = fogIndex;
 }
}
