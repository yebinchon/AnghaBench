
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_13__ {float eyeZ; float drawIntensity; scalar_t__ fogNum; scalar_t__ windowY; scalar_t__ windowX; int origin; int color; } ;
typedef TYPE_4__ flare_t ;
typedef int byte ;
struct TYPE_11__ {float viewportWidth; } ;
struct TYPE_10__ {int c_flareRenders; } ;
struct TYPE_17__ {TYPE_2__ viewParms; TYPE_1__ pc; } ;
struct TYPE_16__ {float value; } ;
struct TYPE_15__ {int numVertexes; scalar_t__ fogNum; int*** texCoords; int** vertexColors; int* indexes; int numIndexes; scalar_t__** xyz; } ;
struct TYPE_14__ {int flareShader; TYPE_3__* world; } ;
struct TYPE_12__ {scalar_t__ numfogs; } ;


 int RB_BeginSurface (int ,scalar_t__) ;
 int RB_CalcModulateColorsByFog (int*) ;
 int RB_EndSurface () ;
 int VectorCopy (int ,scalar_t__*) ;
 int VectorScale (int ,float,int*) ;
 TYPE_8__ backEnd ;
 float flareCoeff ;
 TYPE_7__* r_flareSize ;
 float sqrt (float) ;
 TYPE_6__ tess ;
 TYPE_5__ tr ;

void RB_RenderFlare( flare_t *f ) {
 float size;
 vec3_t color;
 int iColor[3];
 float distance, intensity, factor;
 byte fogFactors[3] = {255, 255, 255};

 backEnd.pc.c_flareRenders++;


 if(f->eyeZ > -1.0f)
  distance = 1.0f;
 else
  distance = -f->eyeZ;


 size = backEnd.viewParms.viewportWidth * ( r_flareSize->value/640.0f + 8 / distance );
 factor = distance + size * sqrt(flareCoeff);

 intensity = flareCoeff * size * size / (factor * factor);

 VectorScale(f->color, f->drawIntensity * intensity, color);


 if(tr.world && f->fogNum > 0 && f->fogNum < tr.world->numfogs)
 {
  tess.numVertexes = 1;
  VectorCopy(f->origin, tess.xyz[0]);
  tess.fogNum = f->fogNum;

  RB_CalcModulateColorsByFog(fogFactors);


  if(!(fogFactors[0] || fogFactors[1] || fogFactors[2]))
   return;
 }

 iColor[0] = color[0] * fogFactors[0];
 iColor[1] = color[1] * fogFactors[1];
 iColor[2] = color[2] * fogFactors[2];

 RB_BeginSurface( tr.flareShader, f->fogNum );


 tess.xyz[tess.numVertexes][0] = f->windowX - size;
 tess.xyz[tess.numVertexes][1] = f->windowY - size;
 tess.texCoords[tess.numVertexes][0][0] = 0;
 tess.texCoords[tess.numVertexes][0][1] = 0;
 tess.vertexColors[tess.numVertexes][0] = iColor[0];
 tess.vertexColors[tess.numVertexes][1] = iColor[1];
 tess.vertexColors[tess.numVertexes][2] = iColor[2];
 tess.vertexColors[tess.numVertexes][3] = 255;
 tess.numVertexes++;

 tess.xyz[tess.numVertexes][0] = f->windowX - size;
 tess.xyz[tess.numVertexes][1] = f->windowY + size;
 tess.texCoords[tess.numVertexes][0][0] = 0;
 tess.texCoords[tess.numVertexes][0][1] = 1;
 tess.vertexColors[tess.numVertexes][0] = iColor[0];
 tess.vertexColors[tess.numVertexes][1] = iColor[1];
 tess.vertexColors[tess.numVertexes][2] = iColor[2];
 tess.vertexColors[tess.numVertexes][3] = 255;
 tess.numVertexes++;

 tess.xyz[tess.numVertexes][0] = f->windowX + size;
 tess.xyz[tess.numVertexes][1] = f->windowY + size;
 tess.texCoords[tess.numVertexes][0][0] = 1;
 tess.texCoords[tess.numVertexes][0][1] = 1;
 tess.vertexColors[tess.numVertexes][0] = iColor[0];
 tess.vertexColors[tess.numVertexes][1] = iColor[1];
 tess.vertexColors[tess.numVertexes][2] = iColor[2];
 tess.vertexColors[tess.numVertexes][3] = 255;
 tess.numVertexes++;

 tess.xyz[tess.numVertexes][0] = f->windowX + size;
 tess.xyz[tess.numVertexes][1] = f->windowY - size;
 tess.texCoords[tess.numVertexes][0][0] = 1;
 tess.texCoords[tess.numVertexes][0][1] = 0;
 tess.vertexColors[tess.numVertexes][0] = iColor[0];
 tess.vertexColors[tess.numVertexes][1] = iColor[1];
 tess.vertexColors[tess.numVertexes][2] = iColor[2];
 tess.vertexColors[tess.numVertexes][3] = 255;
 tess.numVertexes++;

 tess.indexes[tess.numIndexes++] = 0;
 tess.indexes[tess.numIndexes++] = 1;
 tess.indexes[tess.numIndexes++] = 2;
 tess.indexes[tess.numIndexes++] = 0;
 tess.indexes[tess.numIndexes++] = 2;
 tess.indexes[tess.numIndexes++] = 3;

 RB_EndSurface();
}
