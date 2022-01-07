
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLuint ;


 int FOUNTAIN_SIDE_POINTS ;
 int FOUNTAIN_SWEEP_STEPS ;
 int GL_COMPILE_AND_EXECUTE ;
 int GL_DIFFUSE ;
 int GL_FRONT ;
 int GL_SHININESS ;
 int GL_SPECULAR ;
 int GL_TRIANGLE_STRIP ;
 double M_PI ;
 scalar_t__ cos (double) ;
 int fountain_diffuse ;
 float* fountain_normal ;
 int fountain_shininess ;
 float* fountain_side ;
 int fountain_specular ;
 int glBegin (int ) ;
 int glCallList (scalar_t__) ;
 int glEnd () ;
 int glEndList () ;
 scalar_t__ glGenLists (int) ;
 int glMaterialf (int ,int ,int ) ;
 int glMaterialfv (int ,int ,int ) ;
 int glNewList (scalar_t__,int ) ;
 int glNormal3f (float,float,float) ;
 int glVertex3f (float,float,float) ;
 scalar_t__ sin (double) ;

__attribute__((used)) static void draw_fountain(void)
{
    static GLuint fountain_list = 0;
    double angle;
    float x, y;
    int m, n;


    if (!fountain_list)
    {
        fountain_list = glGenLists(1);
        glNewList(fountain_list, GL_COMPILE_AND_EXECUTE);

        glMaterialfv(GL_FRONT, GL_DIFFUSE, fountain_diffuse);
        glMaterialfv(GL_FRONT, GL_SPECULAR, fountain_specular);
        glMaterialf(GL_FRONT, GL_SHININESS, fountain_shininess);


        for (n = 0; n < FOUNTAIN_SIDE_POINTS - 1; n++)
        {
            glBegin(GL_TRIANGLE_STRIP);
            for (m = 0; m <= FOUNTAIN_SWEEP_STEPS; m++)
            {
                angle = (double) m * (2.0 * M_PI / (double) FOUNTAIN_SWEEP_STEPS);
                x = (float) cos(angle);
                y = (float) sin(angle);


                glNormal3f(x * fountain_normal[n * 2 + 2],
                           y * fountain_normal[n * 2 + 2],
                           fountain_normal[n * 2 + 3]);
                glVertex3f(x * fountain_side[n * 2 + 2],
                           y * fountain_side[n * 2 + 2],
                           fountain_side[n * 2 +3 ]);
                glNormal3f(x * fountain_normal[n * 2],
                           y * fountain_normal[n * 2],
                           fountain_normal[n * 2 + 1]);
                glVertex3f(x * fountain_side[n * 2],
                           y * fountain_side[n * 2],
                           fountain_side[n * 2 + 1]);
            }

            glEnd();
        }

        glEndList();
    }
    else
        glCallList(fountain_list);
}
