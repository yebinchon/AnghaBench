
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec4_t ;
typedef float* vec3_t ;
struct TYPE_10__ {int ofsXyzNormals; int numVerts; } ;
typedef TYPE_3__ md3Surface_t ;
typedef int byte ;
struct TYPE_13__ {TYPE_2__* currentEntity; } ;
struct TYPE_12__ {float** xyz; size_t numVertexes; float** normal; } ;
struct TYPE_11__ {float* sinTable; } ;
struct TYPE_8__ {int frame; int oldframe; } ;
struct TYPE_9__ {TYPE_1__ e; } ;


 unsigned int FUNCTABLE_MASK ;
 int FUNCTABLE_SIZE ;
 double MD3_XYZ_SCALE ;
 int VectorArrayNormalize (int *,int) ;
 TYPE_6__ backEnd ;
 TYPE_5__ tess ;
 TYPE_4__ tr ;

__attribute__((used)) static void LerpMeshVertexes_scalar(md3Surface_t *surf, float backlerp)
{
 short *oldXyz, *newXyz, *oldNormals, *newNormals;
 float *outXyz, *outNormal;
 float oldXyzScale, newXyzScale;
 float oldNormalScale, newNormalScale;
 int vertNum;
 unsigned lat, lng;
 int numVerts;

 outXyz = tess.xyz[tess.numVertexes];
 outNormal = tess.normal[tess.numVertexes];

 newXyz = (short *)((byte *)surf + surf->ofsXyzNormals)
  + (backEnd.currentEntity->e.frame * surf->numVerts * 4);
 newNormals = newXyz + 3;

 newXyzScale = MD3_XYZ_SCALE * (1.0 - backlerp);
 newNormalScale = 1.0 - backlerp;

 numVerts = surf->numVerts;

 if ( backlerp == 0 ) {



  for (vertNum=0 ; vertNum < numVerts ; vertNum++,
   newXyz += 4, newNormals += 4,
   outXyz += 4, outNormal += 4)
  {

   outXyz[0] = newXyz[0] * newXyzScale;
   outXyz[1] = newXyz[1] * newXyzScale;
   outXyz[2] = newXyz[2] * newXyzScale;

   lat = ( newNormals[0] >> 8 ) & 0xff;
   lng = ( newNormals[0] & 0xff );
   lat *= (FUNCTABLE_SIZE/256);
   lng *= (FUNCTABLE_SIZE/256);





   outNormal[0] = tr.sinTable[(lat+(FUNCTABLE_SIZE/4))&FUNCTABLE_MASK] * tr.sinTable[lng];
   outNormal[1] = tr.sinTable[lat] * tr.sinTable[lng];
   outNormal[2] = tr.sinTable[(lng+(FUNCTABLE_SIZE/4))&FUNCTABLE_MASK];
  }
 } else {



  oldXyz = (short *)((byte *)surf + surf->ofsXyzNormals)
   + (backEnd.currentEntity->e.oldframe * surf->numVerts * 4);
  oldNormals = oldXyz + 3;

  oldXyzScale = MD3_XYZ_SCALE * backlerp;
  oldNormalScale = backlerp;

  for (vertNum=0 ; vertNum < numVerts ; vertNum++,
   oldXyz += 4, newXyz += 4, oldNormals += 4, newNormals += 4,
   outXyz += 4, outNormal += 4)
  {
   vec3_t uncompressedOldNormal, uncompressedNewNormal;


   outXyz[0] = oldXyz[0] * oldXyzScale + newXyz[0] * newXyzScale;
   outXyz[1] = oldXyz[1] * oldXyzScale + newXyz[1] * newXyzScale;
   outXyz[2] = oldXyz[2] * oldXyzScale + newXyz[2] * newXyzScale;


   lat = ( newNormals[0] >> 8 ) & 0xff;
   lng = ( newNormals[0] & 0xff );
   lat *= 4;
   lng *= 4;
   uncompressedNewNormal[0] = tr.sinTable[(lat+(FUNCTABLE_SIZE/4))&FUNCTABLE_MASK] * tr.sinTable[lng];
   uncompressedNewNormal[1] = tr.sinTable[lat] * tr.sinTable[lng];
   uncompressedNewNormal[2] = tr.sinTable[(lng+(FUNCTABLE_SIZE/4))&FUNCTABLE_MASK];

   lat = ( oldNormals[0] >> 8 ) & 0xff;
   lng = ( oldNormals[0] & 0xff );
   lat *= 4;
   lng *= 4;

   uncompressedOldNormal[0] = tr.sinTable[(lat+(FUNCTABLE_SIZE/4))&FUNCTABLE_MASK] * tr.sinTable[lng];
   uncompressedOldNormal[1] = tr.sinTable[lat] * tr.sinTable[lng];
   uncompressedOldNormal[2] = tr.sinTable[(lng+(FUNCTABLE_SIZE/4))&FUNCTABLE_MASK];

   outNormal[0] = uncompressedOldNormal[0] * oldNormalScale + uncompressedNewNormal[0] * newNormalScale;
   outNormal[1] = uncompressedOldNormal[1] * oldNormalScale + uncompressedNewNormal[1] * newNormalScale;
   outNormal[2] = uncompressedOldNormal[2] * oldNormalScale + uncompressedNewNormal[2] * newNormalScale;


  }
     VectorArrayNormalize((vec4_t *)tess.normal[tess.numVertexes], numVerts);
    }
}
