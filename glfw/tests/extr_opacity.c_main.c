
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_rect {int dummy; } ;
struct nk_font_atlas {int dummy; } ;
struct nk_context {int dummy; } ;
typedef int GLFWwindow ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_SCALE_TO_MONITOR ;
 int GLFW_TRUE ;
 int GLFW_WIN32_KEYBOARD_MENU ;
 int GL_COLOR_BUFFER_BIT ;
 int NK_ANTI_ALIASING_ON ;
 int NK_GLFW3_INSTALL_CALLBACKS ;
 int NK_TEXT_LEFT ;
 int error_callback ;
 int exit (int ) ;
 int glClear (int ) ;
 int gladLoadGL (int ) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int glfwGetProcAddress ;
 float glfwGetWindowOpacity (int *) ;
 int glfwGetWindowSize (int *,int*,int*) ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetWindowOpacity (int *,float) ;
 int glfwSwapBuffers (int *) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 int glfwWaitEventsTimeout (double) ;
 int glfwWindowHint (int ,int ) ;
 int glfwWindowShouldClose (int *) ;
 scalar_t__ nk_begin (struct nk_context*,char*,struct nk_rect,int ) ;
 int nk_end (struct nk_context*) ;
 int nk_glfw3_font_stash_begin (struct nk_font_atlas**) ;
 int nk_glfw3_font_stash_end () ;
 struct nk_context* nk_glfw3_init (int *,int ) ;
 int nk_glfw3_new_frame () ;
 int nk_glfw3_render (int ) ;
 int nk_glfw3_shutdown () ;
 int nk_labelf (struct nk_context*,int ,char*,float) ;
 int nk_layout_row_dynamic (struct nk_context*,int,int) ;
 struct nk_rect nk_rect (float,float,float,float) ;
 scalar_t__ nk_slider_float (struct nk_context*,float,float*,float,float) ;

int main(int argc, char** argv)
{
    GLFWwindow* window;
    struct nk_context* nk;
    struct nk_font_atlas* atlas;

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    glfwWindowHint(GLFW_SCALE_TO_MONITOR, GLFW_TRUE);
    glfwWindowHint(GLFW_WIN32_KEYBOARD_MENU, GLFW_TRUE);

    window = glfwCreateWindow(400, 400, "Opacity", ((void*)0), ((void*)0));
    if (!window)
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    glfwMakeContextCurrent(window);
    gladLoadGL(glfwGetProcAddress);
    glfwSwapInterval(1);

    nk = nk_glfw3_init(window, NK_GLFW3_INSTALL_CALLBACKS);
    nk_glfw3_font_stash_begin(&atlas);
    nk_glfw3_font_stash_end();

    while (!glfwWindowShouldClose(window))
    {
        int width, height;
        struct nk_rect area;

        glfwGetWindowSize(window, &width, &height);
        area = nk_rect(0.f, 0.f, (float) width, (float) height);

        glClear(GL_COLOR_BUFFER_BIT);
        nk_glfw3_new_frame();
        if (nk_begin(nk, "", area, 0))
        {
            float opacity = glfwGetWindowOpacity(window);
            nk_layout_row_dynamic(nk, 30, 2);
            if (nk_slider_float(nk, 0.f, &opacity, 1.f, 0.001f))
                glfwSetWindowOpacity(window, opacity);
            nk_labelf(nk, NK_TEXT_LEFT, "%0.3f", opacity);
        }

        nk_end(nk);
        nk_glfw3_render(NK_ANTI_ALIASING_ON);

        glfwSwapBuffers(window);
        glfwWaitEventsTimeout(1.0);
    }

    nk_glfw3_shutdown();
    glfwTerminate();
    exit(EXIT_SUCCESS);
}
