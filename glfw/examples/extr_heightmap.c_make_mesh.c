
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLfloat ;


 int GL_ARRAY_BUFFER ;
 int GL_DYNAMIC_DRAW ;
 int GL_ELEMENT_ARRAY_BUFFER ;
 int GL_FALSE ;
 int GL_FLOAT ;
 int GL_STATIC_DRAW ;
 int MAP_NUM_LINES ;
 int MAP_NUM_TOTAL_VERTICES ;
 int glBindBuffer (int ,int ) ;
 int glBindVertexArray (int ) ;
 int glBufferData (int ,int,int *,int ) ;
 int glEnableVertexAttribArray (int ) ;
 int glGenBuffers (int,int *) ;
 int glGenVertexArrays (int,int *) ;
 int glGetAttribLocation (int ,char*) ;
 int glVertexAttribPointer (int ,int,int ,int ,int ,int ) ;
 int * map_line_indices ;
 int ** map_vertices ;
 int mesh ;
 int * mesh_vbo ;

__attribute__((used)) static void make_mesh(GLuint program)
{
    GLuint attrloc;

    glGenVertexArrays(1, &mesh);
    glGenBuffers(4, mesh_vbo);
    glBindVertexArray(mesh);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, mesh_vbo[3]);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(GLuint)* MAP_NUM_LINES * 2, map_line_indices, GL_STATIC_DRAW);


    attrloc = glGetAttribLocation(program, "x");
    glBindBuffer(GL_ARRAY_BUFFER, mesh_vbo[0]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(GLfloat) * MAP_NUM_TOTAL_VERTICES, &map_vertices[0][0], GL_STATIC_DRAW);
    glEnableVertexAttribArray(attrloc);
    glVertexAttribPointer(attrloc, 1, GL_FLOAT, GL_FALSE, 0, 0);

    attrloc = glGetAttribLocation(program, "z");
    glBindBuffer(GL_ARRAY_BUFFER, mesh_vbo[2]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(GLfloat) * MAP_NUM_TOTAL_VERTICES, &map_vertices[2][0], GL_STATIC_DRAW);
    glEnableVertexAttribArray(attrloc);
    glVertexAttribPointer(attrloc, 1, GL_FLOAT, GL_FALSE, 0, 0);

    attrloc = glGetAttribLocation(program, "y");
    glBindBuffer(GL_ARRAY_BUFFER, mesh_vbo[1]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(GLfloat) * MAP_NUM_TOTAL_VERTICES, &map_vertices[1][0], GL_DYNAMIC_DRAW);
    glEnableVertexAttribArray(attrloc);
    glVertexAttribPointer(attrloc, 1, GL_FLOAT, GL_FALSE, 0, 0);
}
