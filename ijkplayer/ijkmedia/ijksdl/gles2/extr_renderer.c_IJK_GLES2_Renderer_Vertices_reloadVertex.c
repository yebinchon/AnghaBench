
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int av4_position; int vertices; } ;
typedef TYPE_1__ IJK_GLES2_Renderer ;


 int GL_FALSE ;
 int GL_FLOAT ;
 int IJK_GLES2_checkError_TRACE (char*) ;
 int glEnableVertexAttribArray (int ) ;
 int glVertexAttribPointer (int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static void IJK_GLES2_Renderer_Vertices_reloadVertex(IJK_GLES2_Renderer *renderer)
{
    glVertexAttribPointer(renderer->av4_position, 2, GL_FLOAT, GL_FALSE, 0, renderer->vertices); IJK_GLES2_checkError_TRACE("glVertexAttribPointer(av2_texcoord)");
    glEnableVertexAttribArray(renderer->av4_position); IJK_GLES2_checkError_TRACE("glEnableVertexAttribArray(av2_texcoord)");
}
