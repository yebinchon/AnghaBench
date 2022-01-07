
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nk_rect {int dummy; } ;
struct nk_font_atlas {int dummy; } ;
struct nk_context {int dummy; } ;
struct TYPE_4__ {int size; void* blue; void* green; void* red; } ;
typedef int GLFWwindow ;
typedef int GLFWmonitor ;
typedef TYPE_1__ GLFWgammaramp ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_SCALE_TO_MONITOR ;
 int GLFW_TRUE ;
 int GLFW_WIN32_KEYBOARD_MENU ;
 int GL_COLOR_BUFFER_BIT ;
 int NK_ANTI_ALIASING_ON ;
 int NK_GLFW3_INSTALL_CALLBACKS ;
 int NK_TEXT_LEFT ;
 int chart_ramp_array (struct nk_context*,int ,int,void*) ;
 int error_callback ;
 int exit (int ) ;
 int free (void*) ;
 int glClear (int ) ;
 int gladLoadGL (int ) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 TYPE_1__* glfwGetGammaRamp (int *) ;
 int * glfwGetPrimaryMonitor () ;
 int glfwGetProcAddress ;
 int glfwGetWindowSize (int *,int*,int*) ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetGamma (int *,float) ;
 int glfwSetGammaRamp (int *,TYPE_1__*) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSwapBuffers (int *) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 int glfwWaitEventsTimeout (double) ;
 int glfwWindowHint (int ,int ) ;
 int glfwWindowShouldClose (int *) ;
 int key_callback ;
 void* malloc (size_t const) ;
 int memcpy (void*,void*,size_t const) ;
 scalar_t__ nk_begin (struct nk_context*,char*,struct nk_rect,int ) ;
 scalar_t__ nk_button_label (struct nk_context*,char*) ;
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
 int nk_rgb (int,int,int) ;
 scalar_t__ nk_slider_float (struct nk_context*,float,float*,float,float) ;
 int nk_window_set_bounds (struct nk_context*,char*,struct nk_rect) ;

int main(int argc, char** argv)
{
    GLFWmonitor* monitor = ((void*)0);
    GLFWwindow* window;
    GLFWgammaramp orig_ramp;
    struct nk_context* nk;
    struct nk_font_atlas* atlas;
    float gamma_value = 1.f;

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    monitor = glfwGetPrimaryMonitor();

    glfwWindowHint(GLFW_SCALE_TO_MONITOR, GLFW_TRUE);
    glfwWindowHint(GLFW_WIN32_KEYBOARD_MENU, GLFW_TRUE);

    window = glfwCreateWindow(800, 400, "Gamma Test", ((void*)0), ((void*)0));
    if (!window)
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    {
        const GLFWgammaramp* ramp = glfwGetGammaRamp(monitor);
        const size_t array_size = ramp->size * sizeof(short);
        orig_ramp.size = ramp->size;
        orig_ramp.red = malloc(array_size);
        orig_ramp.green = malloc(array_size);
        orig_ramp.blue = malloc(array_size);
        memcpy(orig_ramp.red, ramp->red, array_size);
        memcpy(orig_ramp.green, ramp->green, array_size);
        memcpy(orig_ramp.blue, ramp->blue, array_size);
    }

    glfwMakeContextCurrent(window);
    gladLoadGL(glfwGetProcAddress);
    glfwSwapInterval(1);

    nk = nk_glfw3_init(window, NK_GLFW3_INSTALL_CALLBACKS);
    nk_glfw3_font_stash_begin(&atlas);
    nk_glfw3_font_stash_end();

    glfwSetKeyCallback(window, key_callback);

    while (!glfwWindowShouldClose(window))
    {
        int width, height;
        struct nk_rect area;

        glfwGetWindowSize(window, &width, &height);
        area = nk_rect(0.f, 0.f, (float) width, (float) height);
        nk_window_set_bounds(nk, "", area);

        glClear(GL_COLOR_BUFFER_BIT);
        nk_glfw3_new_frame();
        if (nk_begin(nk, "", area, 0))
        {
            const GLFWgammaramp* ramp;

            nk_layout_row_dynamic(nk, 30, 3);
            if (nk_slider_float(nk, 0.1f, &gamma_value, 5.f, 0.1f))
                glfwSetGamma(monitor, gamma_value);
            nk_labelf(nk, NK_TEXT_LEFT, "%0.1f", gamma_value);
            if (nk_button_label(nk, "Revert"))
                glfwSetGammaRamp(monitor, &orig_ramp);

            ramp = glfwGetGammaRamp(monitor);

            nk_layout_row_dynamic(nk, height - 60.f, 3);
            chart_ramp_array(nk, nk_rgb(255, 0, 0), ramp->size, ramp->red);
            chart_ramp_array(nk, nk_rgb(0, 255, 0), ramp->size, ramp->green);
            chart_ramp_array(nk, nk_rgb(0, 0, 255), ramp->size, ramp->blue);
        }

        nk_end(nk);
        nk_glfw3_render(NK_ANTI_ALIASING_ON);

        glfwSwapBuffers(window);
        glfwWaitEventsTimeout(1.0);
    }

    free(orig_ramp.red);
    free(orig_ramp.green);
    free(orig_ramp.blue);

    nk_glfw3_shutdown();
    glfwTerminate();
    exit(EXIT_SUCCESS);
}
