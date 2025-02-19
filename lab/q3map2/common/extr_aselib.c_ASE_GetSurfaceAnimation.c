
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int triangle_t ;
struct TYPE_16__ {int numtriangles; TYPE_4__* triangles; int materialname; int name; } ;
typedef TYPE_6__ polyset_t ;
struct TYPE_17__ {int numFaces; size_t** faces; size_t** tfaces; TYPE_5__* tvertexes; TYPE_3__* vertexes; } ;
typedef TYPE_7__ aseMesh_t ;
struct TYPE_12__ {int numFrames; TYPE_7__* frames; } ;
struct TYPE_18__ {size_t materialRef; TYPE_2__ anim; int name; } ;
typedef TYPE_8__ aseGeomObject_t ;
struct TYPE_19__ {TYPE_1__* materials; TYPE_8__* objects; } ;
struct TYPE_15__ {int t; int s; } ;
struct TYPE_14__ {int ** texcoords; int ** verts; } ;
struct TYPE_13__ {int z; int y; int x; } ;
struct TYPE_11__ {int name; } ;


 int SYS_WRN ;
 int Sys_FPrintf (int ,char*) ;
 TYPE_9__ ase ;
 void* calloc (int,int) ;
 int strcpy (int ,int ) ;

polyset_t *ASE_GetSurfaceAnimation( int which, int *pNumFrames, int skipFrameStart, int skipFrameEnd, int maxFrames ){
 aseGeomObject_t *pObject = &ase.objects[which];
 polyset_t *psets;
 int numFramesInAnimation;
 int numFramesToKeep;
 int i, f;

 if ( !pObject->anim.numFrames ) {
  return 0;
 }

 if ( pObject->anim.numFrames > maxFrames && maxFrames != -1 ) {
  numFramesInAnimation = maxFrames;
 }
 else
 {
  numFramesInAnimation = pObject->anim.numFrames;
  if ( maxFrames != -1 ) {
   Sys_FPrintf( SYS_WRN, "WARNING: ASE_GetSurfaceAnimation maxFrames > numFramesInAnimation\n" );
  }
 }

 if ( skipFrameEnd != -1 ) {
  numFramesToKeep = numFramesInAnimation - ( skipFrameEnd - skipFrameStart + 1 );
 }
 else{
  numFramesToKeep = numFramesInAnimation;
 }

 *pNumFrames = numFramesToKeep;

 psets = calloc( sizeof( polyset_t ) * numFramesToKeep, 1 );

 for ( f = 0, i = 0; i < numFramesInAnimation; i++ )
 {
  int t;
  aseMesh_t *pMesh = &pObject->anim.frames[i];

  if ( skipFrameStart != -1 ) {
   if ( i >= skipFrameStart && i <= skipFrameEnd ) {
    continue;
   }
  }

  strcpy( psets[f].name, pObject->name );
  strcpy( psets[f].materialname, ase.materials[pObject->materialRef].name );

  psets[f].triangles = calloc( sizeof( triangle_t ) * pObject->anim.frames[i].numFaces, 1 );
  psets[f].numtriangles = pObject->anim.frames[i].numFaces;

  for ( t = 0; t < pObject->anim.frames[i].numFaces; t++ )
  {
   int k;

   for ( k = 0; k < 3; k++ )
   {
    psets[f].triangles[t].verts[k][0] = pMesh->vertexes[pMesh->faces[t][k]].x;
    psets[f].triangles[t].verts[k][1] = pMesh->vertexes[pMesh->faces[t][k]].y;
    psets[f].triangles[t].verts[k][2] = pMesh->vertexes[pMesh->faces[t][k]].z;

    if ( pMesh->tvertexes && pMesh->tfaces ) {
     psets[f].triangles[t].texcoords[k][0] = pMesh->tvertexes[pMesh->tfaces[t][k]].s;
     psets[f].triangles[t].texcoords[k][1] = pMesh->tvertexes[pMesh->tfaces[t][k]].t;
    }

   }
  }

  f++;
 }

 return psets;
}
