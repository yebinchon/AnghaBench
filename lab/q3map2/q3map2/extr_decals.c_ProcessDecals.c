
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef float* vec4_t ;
typedef int vec3_t ;
struct TYPE_15__ {struct TYPE_15__* next; int shaderInfo; int mesh; int longestCurve; int eMaxs; int eMins; } ;
typedef TYPE_1__ parseMesh_t ;
struct TYPE_16__ {int width; int height; TYPE_4__* verts; } ;
typedef TYPE_2__ mesh_t ;
struct TYPE_17__ {TYPE_1__* patches; int origin; int * epairs; } ;
typedef TYPE_3__ entity_t ;
struct TYPE_18__ {int xyz; } ;
typedef TYPE_4__ bspDrawVert_t ;


 float DotProduct (int ,float*) ;
 TYPE_3__* FindTargetEntity (char const*) ;
 int FreeMesh (TYPE_2__*) ;
 int IterationsForCurve (int ,int ) ;
 int MakeDecalProjector (int ,float*,float,int,TYPE_4__**) ;
 scalar_t__ PLANAR_EPSILON ;
 scalar_t__ PlaneFromPoints (float*,int ,int ,int ) ;
 int PutMeshOnCurve (TYPE_2__) ;
 scalar_t__ Q_stricmp (char const*,char*) ;
 TYPE_2__* RemoveLinearMeshColumnsRows (TYPE_2__*) ;
 int SYS_VRB ;
 int SYS_WRN ;
 TYPE_2__* SubdivideMesh2 (int ,int) ;
 int Sys_FPrintf (int ,char*,...) ;
 char* ValueForKey (TYPE_3__*,char*) ;
 int VectorAdd (int ,int ,int ) ;
 scalar_t__ VectorCompare (int ,int ) ;
 int VectorCopy (int ,int ) ;
 float VectorNormalize (int ,float*) ;
 int VectorScale (int ,float,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_3__* entities ;
 scalar_t__ fabs (float) ;
 int free (TYPE_2__*) ;
 int numEntities ;
 int numProjectors ;
 int patchSubdivisions ;
 int vec3_origin ;

void ProcessDecals( void ){
 int i, j, x, y, pw[ 5 ], r, iterations;
 float distance;
 vec4_t projection, plane;
 vec3_t origin, target, delta;
 entity_t *e, *e2;
 parseMesh_t *p;
 mesh_t *mesh, *subdivided;
 bspDrawVert_t *dv[ 4 ];
 const char *value;



 Sys_FPrintf( SYS_VRB, "--- ProcessDecals ---\n" );


 for ( i = 0; i < numEntities; i++ )
 {

  e = &entities[ i ];
  value = ValueForKey( e, "classname" );
  if ( Q_stricmp( value, "_decal" ) ) {
   continue;
  }


  if ( e->patches == ((void*)0) ) {
   Sys_FPrintf( SYS_WRN, "WARNING: Decal entity without any patch meshes, ignoring.\n" );
   e->epairs = ((void*)0);
   continue;
  }


  value = ValueForKey( e, "target" );
  e2 = FindTargetEntity( value );


  if ( e2 == ((void*)0) ) {
   Sys_FPrintf( SYS_WRN, "WARNING: Decal entity without a valid target, ignoring.\n" );
   continue;
  }


  for ( p = e->patches; p != ((void*)0); p = e->patches )
  {

   if ( VectorCompare( e->origin, vec3_origin ) ) {
    VectorAdd( p->eMins, p->eMaxs, origin );
    VectorScale( origin, 0.5f, origin );
   }
   else{
    VectorCopy( e->origin, origin );
   }

   VectorCopy( e2->origin, target );
   VectorSubtract( target, origin, delta );


   distance = VectorNormalize( delta, projection );
   projection[ 3 ] = DotProduct( origin, projection );


   if ( distance > 0.125f ) {

    iterations = IterationsForCurve( p->longestCurve, patchSubdivisions );
    subdivided = SubdivideMesh2( p->mesh, iterations );


    PutMeshOnCurve( *subdivided );
    mesh = RemoveLinearMeshColumnsRows( subdivided );
    FreeMesh( subdivided );


    for ( j = 0; j < ( mesh->width * mesh->height ); j++ )
     VectorAdd( mesh->verts[ j ].xyz, e->origin, mesh->verts[ j ].xyz );


    for ( y = 0; y < ( mesh->height - 1 ); y++ )
    {
     for ( x = 0; x < ( mesh->width - 1 ); x++ )
     {

      pw[ 0 ] = x + ( y * mesh->width );
      pw[ 1 ] = x + ( ( y + 1 ) * mesh->width );
      pw[ 2 ] = x + 1 + ( ( y + 1 ) * mesh->width );
      pw[ 3 ] = x + 1 + ( y * mesh->width );
      pw[ 4 ] = x + ( y * mesh->width );


      r = ( x + y ) & 1;


      dv[ 0 ] = &mesh->verts[ pw[ r + 0 ] ];
      dv[ 1 ] = &mesh->verts[ pw[ r + 1 ] ];
      dv[ 2 ] = &mesh->verts[ pw[ r + 2 ] ];
      dv[ 3 ] = &mesh->verts[ pw[ r + 3 ] ];


      plane[ 0 ] = 0.0f;
      if ( 0 && PlaneFromPoints( plane, dv[ 0 ]->xyz, dv[ 1 ]->xyz, dv[ 2 ]->xyz ) &&
        fabs( DotProduct( dv[ 1 ]->xyz, plane ) - plane[ 3 ] ) <= PLANAR_EPSILON ) {

       MakeDecalProjector( p->shaderInfo, projection, distance, 4, dv );
      }
      else
      {

       MakeDecalProjector( p->shaderInfo, projection, distance, 3, dv );


       dv[ 1 ] = dv[ 2 ];
       dv[ 2 ] = dv[ 3 ];
       MakeDecalProjector( p->shaderInfo, projection, distance, 3, dv );
      }
     }
    }


    free( mesh );
   }


   e->patches = p->next;






  }
 }


 Sys_FPrintf( SYS_VRB, "%9d decal projectors\n", numProjectors );
}
