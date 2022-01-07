
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;
typedef int GLFWwindow ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_POINTS ;
 int GL_QUERY_RESULT ;
 int GL_RGBA ;
 int GL_SAMPLES_PASSED ;
 int GL_UNSIGNED_BYTE ;
 int glBegin (int ) ;
 int glBeginQuery (int ,int ) ;
 int glClear (int ) ;
 int glEnd () ;
 int glEndQuery (int ) ;
 int glFinish () ;
 int glGenQueries (int,int *) ;
 int glGetQueryObjectiv (int ,int ,int *) ;
 int glReadPixels (int ,int ,int,int,int ,int ,unsigned char*) ;
 int glVertex2f (int ,int ) ;
 int glfwSwapBuffers (int *) ;
 int occlusion_query ;
 scalar_t__ swap_clear ;
 scalar_t__ swap_finish ;
 scalar_t__ swap_occlusion_query ;
 scalar_t__ swap_read_pixels ;

void swap_buffers(GLFWwindow* window)
{
    glfwSwapBuffers(window);

    if (swap_clear)
        glClear(GL_COLOR_BUFFER_BIT);

    if (swap_finish)
        glFinish();

    if (swap_occlusion_query) {
        GLint occlusion_result;
        if (!occlusion_query)
            glGenQueries(1, &occlusion_query);
        glBeginQuery(GL_SAMPLES_PASSED, occlusion_query);
        glBegin(GL_POINTS);
        glVertex2f(0, 0);
        glEnd();
        glEndQuery(GL_SAMPLES_PASSED);
        glGetQueryObjectiv(occlusion_query, GL_QUERY_RESULT, &occlusion_result);
    }

    if (swap_read_pixels) {
        unsigned char rgba[4];
        glReadPixels(0, 0, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, rgba);
    }
}
