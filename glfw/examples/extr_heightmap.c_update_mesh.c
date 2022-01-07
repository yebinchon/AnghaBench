
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLfloat ;


 int GL_ARRAY_BUFFER ;
 int MAP_NUM_TOTAL_VERTICES ;
 int glBufferSubData (int ,int ,int,int *) ;
 int ** map_vertices ;

__attribute__((used)) static void update_mesh(void)
{
    glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(GLfloat) * MAP_NUM_TOTAL_VERTICES, &map_vertices[1][0]);
}
