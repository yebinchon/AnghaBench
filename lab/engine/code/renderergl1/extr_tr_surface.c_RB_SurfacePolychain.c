
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numVerts; TYPE_1__* verts; } ;
typedef TYPE_2__ srfPoly_t ;
struct TYPE_7__ {int numVertexes; int* indexes; int numIndexes; int * vertexColors; int *** texCoords; int * xyz; } ;
struct TYPE_5__ {scalar_t__ modulate; int * st; int xyz; } ;


 int RB_CHECKOVERFLOW (int,int) ;
 int VectorCopy (int ,int ) ;
 TYPE_3__ tess ;

__attribute__((used)) static void RB_SurfacePolychain( srfPoly_t *p ) {
 int i;
 int numv;

 RB_CHECKOVERFLOW( p->numVerts, 3*(p->numVerts - 2) );


 numv = tess.numVertexes;
 for ( i = 0; i < p->numVerts; i++ ) {
  VectorCopy( p->verts[i].xyz, tess.xyz[numv] );
  tess.texCoords[numv][0][0] = p->verts[i].st[0];
  tess.texCoords[numv][0][1] = p->verts[i].st[1];
  *(int *)&tess.vertexColors[numv] = *(int *)p->verts[ i ].modulate;

  numv++;
 }


 for ( i = 0; i < p->numVerts-2; i++ ) {
  tess.indexes[tess.numIndexes + 0] = tess.numVertexes;
  tess.indexes[tess.numIndexes + 1] = tess.numVertexes + i + 1;
  tess.indexes[tess.numIndexes + 2] = tess.numVertexes + i + 2;
  tess.numIndexes += 3;
 }

 tess.numVertexes = numv;
}
