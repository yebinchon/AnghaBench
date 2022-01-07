
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_16__ {scalar_t__ numIndexes; scalar_t__ numVertexes; scalar_t__* indexes; scalar_t__** xyz; int numPasses; scalar_t__ firstIndex; int (* currentStageIteratorFunc ) () ;scalar_t__ useCacheVao; TYPE_1__* shader; } ;
typedef TYPE_3__ shaderCommands_t ;
struct TYPE_21__ {scalar_t__ integer; } ;
struct TYPE_20__ {scalar_t__ integer; } ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {int (* Error ) (int ,char*) ;} ;
struct TYPE_17__ {TYPE_1__* shadowShader; } ;
struct TYPE_15__ {scalar_t__ c_indexes; int c_totalIndexes; int c_vertexes; int c_shaders; } ;
struct TYPE_14__ {scalar_t__ sort; } ;
struct TYPE_13__ {TYPE_2__ pc; } ;


 int DrawNormals (TYPE_3__*) ;
 int DrawTris (TYPE_3__*) ;
 int ERR_DROP ;
 int GLimp_LogComment (char*) ;
 int RB_ShadowTessEnd () ;
 int SHADER_MAX_INDEXES ;
 int SHADER_MAX_VERTEXES ;
 int VaoCache_Commit () ;
 TYPE_10__ backEnd ;
 TYPE_9__* r_debugSort ;
 TYPE_8__* r_shownormals ;
 TYPE_7__* r_showtris ;
 TYPE_6__ ri ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;
 int stub3 () ;
 TYPE_3__ tess ;
 TYPE_4__ tr ;

void RB_EndSurface( void ) {
 shaderCommands_t *input;

 input = &tess;

 if (input->numIndexes == 0 || input->numVertexes == 0) {
  return;
 }

 if (input->indexes[SHADER_MAX_INDEXES-1] != 0) {
  ri.Error (ERR_DROP, "RB_EndSurface() - SHADER_MAX_INDEXES hit");
 }
 if (input->xyz[SHADER_MAX_VERTEXES-1][0] != 0) {
  ri.Error (ERR_DROP, "RB_EndSurface() - SHADER_MAX_VERTEXES hit");
 }

 if ( tess.shader == tr.shadowShader ) {
  RB_ShadowTessEnd();
  return;
 }


 if ( r_debugSort->integer && r_debugSort->integer < tess.shader->sort ) {
  return;
 }

 if (tess.useCacheVao)
 {

  VaoCache_Commit();
 }




 backEnd.pc.c_shaders++;
 backEnd.pc.c_vertexes += tess.numVertexes;
 backEnd.pc.c_indexes += tess.numIndexes;
 backEnd.pc.c_totalIndexes += tess.numIndexes * tess.numPasses;




 tess.currentStageIteratorFunc();




 if ( r_showtris->integer ) {
  DrawTris (input);
 }
 if ( r_shownormals->integer ) {
  DrawNormals (input);
 }

 tess.numIndexes = 0;
 tess.numVertexes = 0;
 tess.firstIndex = 0;

 GLimp_LogComment( "----------\n" );
}
