
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {double shadeAngleDegrees; scalar_t__ tcGen; int lightmapAxis; int * vecs; void* nonplanar; void* forceMeta; void* globalTexture; } ;
typedef TYPE_1__ shaderInfo_t ;
struct TYPE_8__ {char* shader; } ;
typedef TYPE_2__ indexMap_t ;
typedef int byte ;


 int MAX_QPATH ;
 TYPE_1__* ShaderInfoForShader (char*) ;
 int VectorCopy (int ,int ) ;
 float VectorLength (int ) ;
 scalar_t__ qfalse ;
 void* qtrue ;
 int sprintf (char*,char*,char*,int,...) ;

shaderInfo_t *GetIndexedShader( shaderInfo_t *parent, indexMap_t *im, int numPoints, byte *shaderIndexes ){
 int i;
 byte minShaderIndex, maxShaderIndex;
 char shader[ MAX_QPATH ];
 shaderInfo_t *si;



 if ( im == ((void*)0) || numPoints <= 0 || shaderIndexes == ((void*)0) ) {
  return ShaderInfoForShader( "default" );
 }


 minShaderIndex = 255;
 maxShaderIndex = 0;
 for ( i = 0; i < numPoints; i++ )
 {
  if ( shaderIndexes[ i ] < minShaderIndex ) {
   minShaderIndex = shaderIndexes[ i ];
  }
  if ( shaderIndexes[ i ] > maxShaderIndex ) {
   maxShaderIndex = shaderIndexes[ i ];
  }
 }


 for ( i = 0; i < numPoints; i++ )
 {

  if ( shaderIndexes[ i ] < maxShaderIndex ) {
   shaderIndexes[ i ] = 0;
  }
  else{
   shaderIndexes[ i ] = 255;
  }
 }


 if ( minShaderIndex == maxShaderIndex ) {
  sprintf( shader, "textures/%s_%d", im->shader, maxShaderIndex );
 }
 else{
  sprintf( shader, "textures/%s_%dto%d", im->shader, minShaderIndex, maxShaderIndex );
 }


 si = ShaderInfoForShader( shader );


 if ( parent->globalTexture ) {
  si->globalTexture = qtrue;
 }
 if ( parent->forceMeta ) {
  si->forceMeta = qtrue;
 }
 if ( parent->nonplanar ) {
  si->nonplanar = qtrue;
 }
 if ( si->shadeAngleDegrees == 0.0 ) {
  si->shadeAngleDegrees = parent->shadeAngleDegrees;
 }
 if ( parent->tcGen && si->tcGen == qfalse ) {

  si->tcGen = qtrue;
  VectorCopy( parent->vecs[ 0 ], si->vecs[ 0 ] );
  VectorCopy( parent->vecs[ 1 ], si->vecs[ 1 ] );
 }
 if ( VectorLength( parent->lightmapAxis ) > 0.0f && VectorLength( si->lightmapAxis ) <= 0.0f ) {

  VectorCopy( parent->lightmapAxis, si->lightmapAxis );
 }


 return si;
}
