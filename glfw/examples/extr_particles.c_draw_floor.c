
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLuint ;


 int GL_COMPILE_AND_EXECUTE ;
 int GL_DIFFUSE ;
 int GL_FRONT ;
 int GL_QUADS ;
 int GL_SHININESS ;
 int GL_SPECULAR ;
 int GL_TEXTURE_2D ;
 int floor_diffuse ;
 int floor_shininess ;
 int floor_specular ;
 int floor_tex_id ;
 int glBegin (int ) ;
 int glBindTexture (int ,int ) ;
 int glCallList (scalar_t__) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glEnd () ;
 int glEndList () ;
 scalar_t__ glGenLists (int) ;
 int glMaterialf (int ,int ,int ) ;
 int glMaterialfv (int ,int ,int ) ;
 int glNewList (scalar_t__,int ) ;
 int glNormal3f (float,float,float) ;
 int tessellate_floor (float,float,float,float,int ) ;
 int wireframe ;

__attribute__((used)) static void draw_floor(void)
{
    static GLuint floor_list = 0;

    if (!wireframe)
    {
        glEnable(GL_TEXTURE_2D);
        glBindTexture(GL_TEXTURE_2D, floor_tex_id);
    }


    if (!floor_list)
    {
        floor_list = glGenLists(1);
        glNewList(floor_list, GL_COMPILE_AND_EXECUTE);

        glMaterialfv(GL_FRONT, GL_DIFFUSE, floor_diffuse);
        glMaterialfv(GL_FRONT, GL_SPECULAR, floor_specular);
        glMaterialf(GL_FRONT, GL_SHININESS, floor_shininess);



        glNormal3f(0.f, 0.f, 1.f);
        glBegin(GL_QUADS);
        tessellate_floor(-1.f, -1.f, 0.f, 0.f, 0);
        tessellate_floor( 0.f, -1.f, 1.f, 0.f, 0);
        tessellate_floor( 0.f, 0.f, 1.f, 1.f, 0);
        tessellate_floor(-1.f, 0.f, 0.f, 1.f, 0);
        glEnd();

        glEndList();
    }
    else
        glCallList(floor_list);

    glDisable(GL_TEXTURE_2D);

}
