
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int lightdir; int color; int lightmap; int st; int tangent; int normal; int xyz; } ;
typedef TYPE_2__ srfVert_t ;
typedef int int16_t ;
typedef int glIndex_t ;
struct TYPE_7__ {size_t numIndexes; size_t numVertexes; float** xyz; float** texCoords; float** lightCoords; int* vertexDlightBits; int dlightBits; int pshadowBits; int ** lightdir; TYPE_1__* shader; int ** color; int ** tangent; int ** normal; int * indexes; int vao; } ;
struct TYPE_5__ {int vertexAttribs; } ;


 int ATTR_COLOR ;
 int ATTR_LIGHTCOORD ;
 int ATTR_LIGHTDIRECTION ;
 int ATTR_NORMAL ;
 int ATTR_POSITION ;
 int ATTR_TANGENT ;
 int ATTR_TEXCOORD ;
 int RB_CHECKOVERFLOW (int,int) ;
 int RB_CheckVao (int ) ;
 int VectorCopy (int ,float*) ;
 int VectorCopy2 (int ,float*) ;
 int VectorCopy4 (int ,int *) ;
 TYPE_3__ tess ;

__attribute__((used)) static void RB_SurfaceVertsAndIndexes( int numVerts, srfVert_t *verts, int numIndexes, glIndex_t *indexes, int dlightBits, int pshadowBits)
{
 int i;
 glIndex_t *inIndex;
 srfVert_t *dv;
 float *xyz, *texCoords, *lightCoords;
 int16_t *lightdir;
 int16_t *normal;
 int16_t *tangent;
 glIndex_t *outIndex;
 uint16_t *color;

 RB_CheckVao(tess.vao);

 RB_CHECKOVERFLOW( numVerts, numIndexes );

 inIndex = indexes;
 outIndex = &tess.indexes[ tess.numIndexes ];
 for ( i = 0 ; i < numIndexes ; i++ ) {
  *outIndex++ = tess.numVertexes + *inIndex++;
 }
 tess.numIndexes += numIndexes;

 if ( tess.shader->vertexAttribs & ATTR_POSITION )
 {
  dv = verts;
  xyz = tess.xyz[ tess.numVertexes ];
  for ( i = 0 ; i < numVerts ; i++, dv++, xyz+=4 )
   VectorCopy(dv->xyz, xyz);
 }

 if ( tess.shader->vertexAttribs & ATTR_NORMAL )
 {
  dv = verts;
  normal = tess.normal[ tess.numVertexes ];
  for ( i = 0 ; i < numVerts ; i++, dv++, normal+=4 )
   VectorCopy4(dv->normal, normal);
 }

 if ( tess.shader->vertexAttribs & ATTR_TANGENT )
 {
  dv = verts;
  tangent = tess.tangent[ tess.numVertexes ];
  for ( i = 0 ; i < numVerts ; i++, dv++, tangent+=4 )
   VectorCopy4(dv->tangent, tangent);
 }

 if ( tess.shader->vertexAttribs & ATTR_TEXCOORD )
 {
  dv = verts;
  texCoords = tess.texCoords[tess.numVertexes];
  for ( i = 0 ; i < numVerts ; i++, dv++, texCoords+=2 )
   VectorCopy2(dv->st, texCoords);
 }

 if ( tess.shader->vertexAttribs & ATTR_LIGHTCOORD )
 {
  dv = verts;
  lightCoords = tess.lightCoords[ tess.numVertexes ];
  for ( i = 0 ; i < numVerts ; i++, dv++, lightCoords+=2 )
   VectorCopy2(dv->lightmap, lightCoords);
 }

 if ( tess.shader->vertexAttribs & ATTR_COLOR )
 {
  dv = verts;
  color = tess.color[ tess.numVertexes ];
  for ( i = 0 ; i < numVerts ; i++, dv++, color+=4 )
   VectorCopy4(dv->color, color);
 }

 if ( tess.shader->vertexAttribs & ATTR_LIGHTDIRECTION )
 {
  dv = verts;
  lightdir = tess.lightdir[ tess.numVertexes ];
  for ( i = 0 ; i < numVerts ; i++, dv++, lightdir+=4 )
   VectorCopy4(dv->lightdir, lightdir);
 }







 tess.dlightBits |= dlightBits;
 tess.pshadowBits |= pshadowBits;

 tess.numVertexes += numVerts;
}
