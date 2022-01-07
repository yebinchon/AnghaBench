
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* Error ) (int ,char*,int,int) ;} ;
struct TYPE_3__ {int numVertexes; int numIndexes; int cubemapIndex; int fogNum; int shader; } ;


 int ERR_DROP ;
 int RB_BeginSurface (int ,int ,int ) ;
 int RB_EndSurface () ;
 int SHADER_MAX_INDEXES ;
 int SHADER_MAX_VERTEXES ;
 TYPE_2__ ri ;
 int stub1 (int ,char*,int,int) ;
 int stub2 (int ,char*,int,int) ;
 TYPE_1__ tess ;

void RB_CheckOverflow( int verts, int indexes ) {
 if (tess.numVertexes + verts < SHADER_MAX_VERTEXES
  && tess.numIndexes + indexes < SHADER_MAX_INDEXES) {
  return;
 }

 RB_EndSurface();

 if ( verts >= SHADER_MAX_VERTEXES ) {
  ri.Error(ERR_DROP, "RB_CheckOverflow: verts > MAX (%d > %d)", verts, SHADER_MAX_VERTEXES );
 }
 if ( indexes >= SHADER_MAX_INDEXES ) {
  ri.Error(ERR_DROP, "RB_CheckOverflow: indices > MAX (%d > %d)", indexes, SHADER_MAX_INDEXES );
 }

 RB_BeginSurface(tess.shader, tess.fogNum, tess.cubemapIndex );
}
