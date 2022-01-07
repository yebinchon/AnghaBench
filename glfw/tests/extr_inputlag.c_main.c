
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nk_rect {int dummy; } ;
struct nk_font_atlas {int dummy; } ;
struct nk_context {int dummy; } ;
struct nk_command_buffer {int dummy; } ;
typedef int nk_flags ;
struct TYPE_7__ {int x; int y; } ;
struct TYPE_6__ {int x; int y; } ;
struct TYPE_5__ {int width; int height; } ;
typedef int GLFWwindow ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_CONTEXT_VERSION_MAJOR ;
 int GLFW_CONTEXT_VERSION_MINOR ;
 int GLFW_FALSE ;
 int GLFW_SCALE_TO_MONITOR ;
 int GLFW_TRUE ;
 int GLFW_WIN32_KEYBOARD_MENU ;
 int GL_COLOR_BUFFER_BIT ;
 int NK_ANTI_ALIASING_ON ;
 int NK_GLFW3_INSTALL_CALLBACKS ;
 int NK_STATIC ;
 int NK_TEXT_ALIGN_LEFT ;
 int NK_TEXT_ALIGN_MIDDLE ;
 scalar_t__ cursor_input_message ;
 scalar_t__ cursor_method ;
 TYPE_4__ cursor_pos ;
 int cursor_pos_callback ;
 scalar_t__ cursor_sync_query ;
 TYPE_3__ cursor_vel ;
 int draw_marker (struct nk_command_buffer*,int,int ) ;
 int enable_vsync ;
 int error_callback ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int glClear (int ) ;
 int gladLoadGL (int ) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int * glfwGetPrimaryMonitor () ;
 int glfwGetProcAddress ;
 double glfwGetTime () ;
 TYPE_1__* glfwGetVideoMode (int *) ;
 int glfwGetWindowSize (int *,int*,int*) ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwPollEvents () ;
 int glfwSetCursorPosCallback (int *,int ) ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwTerminate () ;
 int glfwWindowHint (int ,int) ;
 int glfwWindowShouldClose (int *) ;
 int key_callback ;
 scalar_t__ nk_begin (struct nk_context*,char*,struct nk_rect,int ) ;
 int nk_checkbox_label (struct nk_context*,char*,int*) ;
 int nk_end (struct nk_context*) ;
 int nk_glfw3_font_stash_begin (struct nk_font_atlas**) ;
 int nk_glfw3_font_stash_end () ;
 struct nk_context* nk_glfw3_init (int *,int ) ;
 int nk_glfw3_new_frame () ;
 int nk_glfw3_render (int ) ;
 int nk_label (struct nk_context*,char*,int) ;
 int nk_labelf (struct nk_context*,int,char*,int,int) ;
 int nk_layout_row_begin (struct nk_context*,int ,int,int) ;
 int nk_layout_row_dynamic (struct nk_context*,int,int) ;
 int nk_layout_row_end (struct nk_context*) ;
 int nk_layout_row_push (struct nk_context*,int) ;
 int nk_layout_space_to_screen (struct nk_context*,int ) ;
 scalar_t__ nk_option_label (struct nk_context*,char*,int) ;
 struct nk_rect nk_rect (float,float,float,float) ;
 int nk_true ;
 int nk_value_float (struct nk_context*,char*,float) ;
 int nk_vec2 (int,int) ;
 struct nk_command_buffer* nk_window_get_canvas (struct nk_context*) ;
 int sample_input (int *) ;
 int swap_buffers (int *) ;
 int swap_clear ;
 int swap_finish ;
 int swap_occlusion_query ;
 int swap_read_pixels ;
 int update_vsync () ;
 int usage () ;

int main(int argc, char** argv)
{
    int ch, width, height;
    unsigned long frame_count = 0;
    double last_time, current_time;
    double frame_rate = 0;
    int fullscreen = GLFW_FALSE;
    GLFWmonitor* monitor = ((void*)0);
    GLFWwindow* window;
    struct nk_context* nk;
    struct nk_font_atlas* atlas;

    int show_forecasts = nk_true;

    while ((ch = getopt(argc, argv, "fh")) != -1)
    {
        switch (ch)
        {
            case 'h':
                usage();
                exit(EXIT_SUCCESS);

            case 'f':
                fullscreen = GLFW_TRUE;
                break;
        }
    }

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    if (fullscreen)
    {
        const GLFWvidmode* mode;

        monitor = glfwGetPrimaryMonitor();
        mode = glfwGetVideoMode(monitor);

        width = mode->width;
        height = mode->height;
    }
    else
    {
        width = 640;
        height = 480;
    }

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 2);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);

    glfwWindowHint(GLFW_SCALE_TO_MONITOR, GLFW_TRUE);
    glfwWindowHint(GLFW_WIN32_KEYBOARD_MENU, GLFW_TRUE);

    window = glfwCreateWindow(width, height, "Input lag test", monitor, ((void*)0));
    if (!window)
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    glfwMakeContextCurrent(window);
    gladLoadGL(glfwGetProcAddress);
    update_vsync();

    last_time = glfwGetTime();

    nk = nk_glfw3_init(window, NK_GLFW3_INSTALL_CALLBACKS);
    nk_glfw3_font_stash_begin(&atlas);
    nk_glfw3_font_stash_end();

    glfwSetKeyCallback(window, key_callback);
    glfwSetCursorPosCallback(window, cursor_pos_callback);

    while (!glfwWindowShouldClose(window))
    {
        int width, height;
        struct nk_rect area;

        glfwPollEvents();
        sample_input(window);

        glfwGetWindowSize(window, &width, &height);
        area = nk_rect(0.f, 0.f, (float) width, (float) height);

        glClear(GL_COLOR_BUFFER_BIT);
        nk_glfw3_new_frame();
        if (nk_begin(nk, "", area, 0))
        {
            nk_flags align_left = NK_TEXT_ALIGN_LEFT | NK_TEXT_ALIGN_MIDDLE;
            struct nk_command_buffer *canvas = nk_window_get_canvas(nk);
            int lead;

            for (lead = show_forecasts ? 3 : 0; lead >= 0; lead--)
                draw_marker(canvas, lead, nk_vec2(cursor_pos.x + cursor_vel.x * lead,
                                                  cursor_pos.y + cursor_vel.y * lead));


            nk_layout_row_dynamic(nk, 20, 1);
            nk_label(nk, "Move mouse uniformly and check marker under cursor:", align_left);
            for (lead = 0; lead <= 3; lead++) {
                nk_layout_row_begin(nk, NK_STATIC, 12, 2);
                nk_layout_row_push(nk, 25);
                draw_marker(canvas, lead, nk_layout_space_to_screen(nk, nk_vec2(20, 5)));
                nk_label(nk, "", 0);
                nk_layout_row_push(nk, 500);
                if (lead == 0)
                    nk_label(nk, "- current cursor position (no input lag)", align_left);
                else
                    nk_labelf(nk, align_left, "- %d-frame forecast (input lag is %d frame)", lead, lead);
                nk_layout_row_end(nk);
            }

            nk_layout_row_dynamic(nk, 20, 1);

            nk_checkbox_label(nk, "Show forecasts", &show_forecasts);
            nk_label(nk, "Input method:", align_left);
            if (nk_option_label(nk, "glfwGetCursorPos (sync query)", cursor_method == cursor_sync_query))
                cursor_method = cursor_sync_query;
            if (nk_option_label(nk, "glfwSetCursorPosCallback (latest input message)", cursor_method == cursor_input_message))
                cursor_method = cursor_input_message;

            nk_label(nk, "", 0);

            nk_value_float(nk, "FPS", (float) frame_rate);
            if (nk_checkbox_label(nk, "Enable vsync", &enable_vsync))
                update_vsync();

            nk_label(nk, "", 0);

            nk_label(nk, "After swap:", align_left);
            nk_checkbox_label(nk, "glClear", &swap_clear);
            nk_checkbox_label(nk, "glFinish", &swap_finish);
            nk_checkbox_label(nk, "draw with occlusion query", &swap_occlusion_query);
            nk_checkbox_label(nk, "glReadPixels", &swap_read_pixels);
        }

        nk_end(nk);
        nk_glfw3_render(NK_ANTI_ALIASING_ON);

        swap_buffers(window);

        frame_count++;

        current_time = glfwGetTime();
        if (current_time - last_time > 1.0)
        {
            frame_rate = frame_count / (current_time - last_time);
            frame_count = 0;
            last_time = current_time;
        }
    }

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
