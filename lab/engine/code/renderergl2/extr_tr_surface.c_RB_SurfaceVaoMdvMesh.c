
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_15__ {scalar_t__ offset; int stride; int normalized; int type; int count; } ;
typedef TYPE_3__ vaoAttrib_t ;
struct TYPE_16__ {TYPE_10__* vao; TYPE_2__* mdvModel; int numVerts; int numIndexes; int mdvSurface; } ;
typedef TYPE_4__ srfVaoMdvMesh_t ;
struct TYPE_17__ {int oldframe; int frame; float backlerp; } ;
typedef TYPE_5__ refEntity_t ;
struct TYPE_21__ {TYPE_1__* currentEntity; } ;
struct TYPE_20__ {scalar_t__ vertexArrayObject; } ;
struct TYPE_19__ {float vertexAttribsInterpolation; void* vertexAnimation; } ;
struct TYPE_18__ {int numVertexes; int numIndexes; void* useInternalVao; int cubemapIndex; int fogNum; int shader; } ;
struct TYPE_14__ {int numFrames; } ;
struct TYPE_13__ {TYPE_5__ e; } ;
struct TYPE_12__ {int frameSize; TYPE_3__* attribs; int vertexesVBO; } ;


 int ATTR_INDEX_NORMAL ;
 int ATTR_INDEX_NORMAL2 ;
 int ATTR_INDEX_POSITION ;
 int ATTR_INDEX_POSITION2 ;
 int ATTR_INDEX_TANGENT ;
 int ATTR_INDEX_TANGENT2 ;
 int ATTR_INDEX_TEXCOORD ;
 int BUFFER_OFFSET (scalar_t__) ;
 int GL_ARRAY_BUFFER ;
 int GLimp_LogComment (char*) ;
 int RB_BeginSurface (int ,int ,int ) ;
 int RB_EndSurface () ;
 int RB_SurfaceMesh (int ) ;
 int R_BindVao (TYPE_10__*) ;
 scalar_t__ ShaderRequiresCPUDeforms (int ) ;
 TYPE_9__ backEnd ;
 TYPE_8__ glRefConfig ;
 TYPE_7__ glState ;
 void* qfalse ;
 int qglBindBuffer (int ,int ) ;
 int qglVertexAttribPointer (int,int ,int ,int ,int ,int ) ;
 void* qtrue ;
 TYPE_6__ tess ;

void RB_SurfaceVaoMdvMesh(srfVaoMdvMesh_t * surface)
{


 refEntity_t *refEnt;

 GLimp_LogComment("--- RB_SurfaceVaoMdvMesh ---\n");

 if (ShaderRequiresCPUDeforms(tess.shader))
 {
  RB_SurfaceMesh(surface->mdvSurface);
  return;
 }

 if(!surface->vao)
  return;


 RB_EndSurface();
 RB_BeginSurface(tess.shader, tess.fogNum, tess.cubemapIndex);

 R_BindVao(surface->vao);

 tess.useInternalVao = qfalse;

 tess.numIndexes = surface->numIndexes;
 tess.numVertexes = surface->numVerts;




 refEnt = &backEnd.currentEntity->e;

 glState.vertexAttribsInterpolation = (refEnt->oldframe == refEnt->frame) ? 0.0f : refEnt->backlerp;

 if (surface->mdvModel->numFrames > 1)
 {
  int frameOffset, attribIndex;
  vaoAttrib_t *vAtb;

  glState.vertexAnimation = qtrue;

  if (glRefConfig.vertexArrayObject)
  {
   qglBindBuffer(GL_ARRAY_BUFFER, surface->vao->vertexesVBO);
  }

  frameOffset = refEnt->frame * surface->vao->frameSize;

  attribIndex = ATTR_INDEX_POSITION;
  vAtb = &surface->vao->attribs[attribIndex];
  qglVertexAttribPointer(attribIndex, vAtb->count, vAtb->type, vAtb->normalized, vAtb->stride, BUFFER_OFFSET(vAtb->offset + frameOffset));

  attribIndex = ATTR_INDEX_NORMAL;
  vAtb = &surface->vao->attribs[attribIndex];
  qglVertexAttribPointer(attribIndex, vAtb->count, vAtb->type, vAtb->normalized, vAtb->stride, BUFFER_OFFSET(vAtb->offset + frameOffset));

  attribIndex = ATTR_INDEX_TANGENT;
  vAtb = &surface->vao->attribs[attribIndex];
  qglVertexAttribPointer(attribIndex, vAtb->count, vAtb->type, vAtb->normalized, vAtb->stride, BUFFER_OFFSET(vAtb->offset + frameOffset));

  frameOffset = refEnt->oldframe * surface->vao->frameSize;

  attribIndex = ATTR_INDEX_POSITION2;
  vAtb = &surface->vao->attribs[attribIndex];
  qglVertexAttribPointer(attribIndex, vAtb->count, vAtb->type, vAtb->normalized, vAtb->stride, BUFFER_OFFSET(vAtb->offset + frameOffset));

  attribIndex = ATTR_INDEX_NORMAL2;
  vAtb = &surface->vao->attribs[attribIndex];
  qglVertexAttribPointer(attribIndex, vAtb->count, vAtb->type, vAtb->normalized, vAtb->stride, BUFFER_OFFSET(vAtb->offset + frameOffset));

  attribIndex = ATTR_INDEX_TANGENT2;
  vAtb = &surface->vao->attribs[attribIndex];
  qglVertexAttribPointer(attribIndex, vAtb->count, vAtb->type, vAtb->normalized, vAtb->stride, BUFFER_OFFSET(vAtb->offset + frameOffset));


  if (!glRefConfig.vertexArrayObject)
  {
   attribIndex = ATTR_INDEX_TEXCOORD;
   vAtb = &surface->vao->attribs[attribIndex];
   qglVertexAttribPointer(attribIndex, vAtb->count, vAtb->type, vAtb->normalized, vAtb->stride, BUFFER_OFFSET(vAtb->offset));
  }
 }

 RB_EndSurface();


 glState.vertexAnimation = qfalse;
}
