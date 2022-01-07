
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef float* vec3_t ;
typedef int glIndex_t ;
struct TYPE_12__ {float radius; float* color; scalar_t__ additive; int transformed; } ;
typedef TYPE_3__ dlight_t ;
typedef int byte ;
struct TYPE_10__ {int c_totalIndexes; int c_dlightIndexes; int c_dlightVertexes; } ;
struct TYPE_11__ {int num_dlights; TYPE_3__* dlights; } ;
struct TYPE_18__ {TYPE_1__ pc; TYPE_2__ refdef; } ;
struct TYPE_17__ {int integer; } ;
struct TYPE_16__ {scalar_t__ value; scalar_t__ integer; } ;
struct TYPE_15__ {int (* ftol ) (float) ;} ;
struct TYPE_14__ {int dlightBits; int numVertexes; float** normal; int numIndexes; int* indexes; int * xyz; } ;
struct TYPE_13__ {int dlightImage; } ;


 int GLS_DEPTHFUNC_EQUAL ;
 int GLS_DSTBLEND_ONE ;
 int GLS_SRCBLEND_DST_COLOR ;
 int GLS_SRCBLEND_ONE ;
 int GL_Bind (int ) ;
 int GL_COLOR_ARRAY ;
 int GL_FLOAT ;
 int GL_State (int) ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_UNSIGNED_BYTE ;
 float LERP (float,float,scalar_t__) ;
 float LUMA (float,float,float) ;
 float Q_fabs (float) ;
 int R_DrawElements (int,int*) ;
 int SHADER_MAX_INDEXES ;
 int SHADER_MAX_VERTEXES ;
 int VectorCopy (int ,float*) ;
 int VectorSubtract (float*,int ,float*) ;
 TYPE_9__ backEnd ;
 int qglColorPointer (int,int ,int ,int**) ;
 int qglEnableClientState (int ) ;
 int qglTexCoordPointer (int,int ,int ,float*) ;
 TYPE_8__* r_dlightBacks ;
 TYPE_7__* r_greyscale ;
 TYPE_6__ ri ;
 int stub1 (float) ;
 int stub2 (float) ;
 int stub3 (float) ;
 TYPE_5__ tess ;
 TYPE_4__ tr ;

__attribute__((used)) static void ProjectDlightTexture_scalar( void ) {
 int i, l;
 vec3_t origin;
 float *texCoords;
 byte *colors;
 byte clipBits[SHADER_MAX_VERTEXES];
 float texCoordsArray[SHADER_MAX_VERTEXES][2];
 byte colorArray[SHADER_MAX_VERTEXES][4];
 glIndex_t hitIndexes[SHADER_MAX_INDEXES];
 int numIndexes;
 float scale;
 float radius;
 vec3_t floatColor;
 float modulate = 0.0f;

 if ( !backEnd.refdef.num_dlights ) {
  return;
 }

 for ( l = 0 ; l < backEnd.refdef.num_dlights ; l++ ) {
  dlight_t *dl;

  if ( !( tess.dlightBits & ( 1 << l ) ) ) {
   continue;
  }
  texCoords = texCoordsArray[0];
  colors = colorArray[0];

  dl = &backEnd.refdef.dlights[l];
  VectorCopy( dl->transformed, origin );
  radius = dl->radius;
  scale = 1.0f / radius;

  if(r_greyscale->integer)
  {
   float luminance;

   luminance = LUMA(dl->color[0], dl->color[1], dl->color[2]) * 255.0f;
   floatColor[0] = floatColor[1] = floatColor[2] = luminance;
  }
  else if(r_greyscale->value)
  {
   float luminance;

   luminance = LUMA(dl->color[0], dl->color[1], dl->color[2]) * 255.0f;
   floatColor[0] = LERP(dl->color[0] * 255.0f, luminance, r_greyscale->value);
   floatColor[1] = LERP(dl->color[1] * 255.0f, luminance, r_greyscale->value);
   floatColor[2] = LERP(dl->color[2] * 255.0f, luminance, r_greyscale->value);
  }
  else
  {
   floatColor[0] = dl->color[0] * 255.0f;
   floatColor[1] = dl->color[1] * 255.0f;
   floatColor[2] = dl->color[2] * 255.0f;
  }

  for ( i = 0 ; i < tess.numVertexes ; i++, texCoords += 2, colors += 4 ) {
   int clip = 0;
   vec3_t dist;

   VectorSubtract( origin, tess.xyz[i], dist );

   backEnd.pc.c_dlightVertexes++;

   texCoords[0] = 0.5f + dist[0] * scale;
   texCoords[1] = 0.5f + dist[1] * scale;

   if( !r_dlightBacks->integer &&

     ( dist[0] * tess.normal[i][0] +
     dist[1] * tess.normal[i][1] +
     dist[2] * tess.normal[i][2] ) < 0.0f ) {
    clip = 63;
   } else {
    if ( texCoords[0] < 0.0f ) {
     clip |= 1;
    } else if ( texCoords[0] > 1.0f ) {
     clip |= 2;
    }
    if ( texCoords[1] < 0.0f ) {
     clip |= 4;
    } else if ( texCoords[1] > 1.0f ) {
     clip |= 8;
    }
    texCoords[0] = texCoords[0];
    texCoords[1] = texCoords[1];


    if ( dist[2] > radius ) {
     clip |= 16;
     modulate = 0.0f;
    } else if ( dist[2] < -radius ) {
     clip |= 32;
     modulate = 0.0f;
    } else {
     dist[2] = Q_fabs(dist[2]);
     if ( dist[2] < radius * 0.5f ) {
      modulate = 1.0f;
     } else {
      modulate = 2.0f * (radius - dist[2]) * scale;
     }
    }
   }
   clipBits[i] = clip;
   colors[0] = ri.ftol(floatColor[0] * modulate);
   colors[1] = ri.ftol(floatColor[1] * modulate);
   colors[2] = ri.ftol(floatColor[2] * modulate);
   colors[3] = 255;
  }


  numIndexes = 0;
  for ( i = 0 ; i < tess.numIndexes ; i += 3 ) {
   int a, b, c;

   a = tess.indexes[i];
   b = tess.indexes[i+1];
   c = tess.indexes[i+2];
   if ( clipBits[a] & clipBits[b] & clipBits[c] ) {
    continue;
   }
   hitIndexes[numIndexes] = a;
   hitIndexes[numIndexes+1] = b;
   hitIndexes[numIndexes+2] = c;
   numIndexes += 3;
  }

  if ( !numIndexes ) {
   continue;
  }

  qglEnableClientState( GL_TEXTURE_COORD_ARRAY );
  qglTexCoordPointer( 2, GL_FLOAT, 0, texCoordsArray[0] );

  qglEnableClientState( GL_COLOR_ARRAY );
  qglColorPointer( 4, GL_UNSIGNED_BYTE, 0, colorArray );

  GL_Bind( tr.dlightImage );


  if ( dl->additive ) {
   GL_State( GLS_SRCBLEND_ONE | GLS_DSTBLEND_ONE | GLS_DEPTHFUNC_EQUAL );
  }
  else {
   GL_State( GLS_SRCBLEND_DST_COLOR | GLS_DSTBLEND_ONE | GLS_DEPTHFUNC_EQUAL );
  }
  R_DrawElements( numIndexes, hitIndexes );
  backEnd.pc.c_totalIndexes += numIndexes;
  backEnd.pc.c_dlightIndexes += numIndexes;
 }
}
