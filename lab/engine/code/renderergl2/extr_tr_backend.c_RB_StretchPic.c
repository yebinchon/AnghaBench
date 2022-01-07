
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int t2; int s1; scalar_t__ h; scalar_t__ y; scalar_t__ x; int s2; scalar_t__ w; int t1; int * shader; } ;
typedef TYPE_1__ stretchPicCommand_t ;
typedef int shader_t ;
struct TYPE_10__ {int color2D; int entity2D; int * currentEntity; scalar_t__ framePostProcessed; } ;
struct TYPE_9__ {scalar_t__ framebufferObject; } ;
struct TYPE_8__ {int numIndexes; int numVertexes; int* indexes; int ** texCoords; scalar_t__** xyz; int * color; int * shader; } ;
struct TYPE_7__ {int * renderFbo; } ;


 int FBO_Bind (int *) ;
 int RB_BeginSurface (int *,int ,int ) ;
 int RB_CHECKOVERFLOW (int,int) ;
 int RB_EndSurface () ;
 int RB_SetGL2D () ;
 int VectorCopy4 (int *,int ) ;
 int VectorScale4 (int ,int,int *) ;
 TYPE_5__ backEnd ;
 TYPE_4__ glRefConfig ;
 TYPE_3__ tess ;
 TYPE_2__ tr ;

const void *RB_StretchPic ( const void *data ) {
 const stretchPicCommand_t *cmd;
 shader_t *shader;
 int numVerts, numIndexes;

 cmd = (const stretchPicCommand_t *)data;


 if (glRefConfig.framebufferObject)
  FBO_Bind(backEnd.framePostProcessed ? ((void*)0) : tr.renderFbo);

 RB_SetGL2D();

 shader = cmd->shader;
 if ( shader != tess.shader ) {
  if ( tess.numIndexes ) {
   RB_EndSurface();
  }
  backEnd.currentEntity = &backEnd.entity2D;
  RB_BeginSurface( shader, 0, 0 );
 }

 RB_CHECKOVERFLOW( 4, 6 );
 numVerts = tess.numVertexes;
 numIndexes = tess.numIndexes;

 tess.numVertexes += 4;
 tess.numIndexes += 6;

 tess.indexes[ numIndexes ] = numVerts + 3;
 tess.indexes[ numIndexes + 1 ] = numVerts + 0;
 tess.indexes[ numIndexes + 2 ] = numVerts + 2;
 tess.indexes[ numIndexes + 3 ] = numVerts + 2;
 tess.indexes[ numIndexes + 4 ] = numVerts + 0;
 tess.indexes[ numIndexes + 5 ] = numVerts + 1;

 {
  uint16_t color[4];

  VectorScale4(backEnd.color2D, 257, color);

  VectorCopy4(color, tess.color[ numVerts ]);
  VectorCopy4(color, tess.color[ numVerts + 1]);
  VectorCopy4(color, tess.color[ numVerts + 2]);
  VectorCopy4(color, tess.color[ numVerts + 3 ]);
 }

 tess.xyz[ numVerts ][0] = cmd->x;
 tess.xyz[ numVerts ][1] = cmd->y;
 tess.xyz[ numVerts ][2] = 0;

 tess.texCoords[ numVerts ][0] = cmd->s1;
 tess.texCoords[ numVerts ][1] = cmd->t1;

 tess.xyz[ numVerts + 1 ][0] = cmd->x + cmd->w;
 tess.xyz[ numVerts + 1 ][1] = cmd->y;
 tess.xyz[ numVerts + 1 ][2] = 0;

 tess.texCoords[ numVerts + 1 ][0] = cmd->s2;
 tess.texCoords[ numVerts + 1 ][1] = cmd->t1;

 tess.xyz[ numVerts + 2 ][0] = cmd->x + cmd->w;
 tess.xyz[ numVerts + 2 ][1] = cmd->y + cmd->h;
 tess.xyz[ numVerts + 2 ][2] = 0;

 tess.texCoords[ numVerts + 2 ][0] = cmd->s2;
 tess.texCoords[ numVerts + 2 ][1] = cmd->t2;

 tess.xyz[ numVerts + 3 ][0] = cmd->x;
 tess.xyz[ numVerts + 3 ][1] = cmd->y + cmd->h;
 tess.xyz[ numVerts + 3 ][2] = 0;

 tess.texCoords[ numVerts + 3 ][0] = cmd->s1;
 tess.texCoords[ numVerts + 3 ][1] = cmd->t2;

 return (const void *)(cmd + 1);
}
