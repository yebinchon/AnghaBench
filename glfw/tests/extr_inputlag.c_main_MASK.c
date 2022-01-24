#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nk_rect {int dummy; } ;
struct nk_font_atlas {int dummy; } ;
struct nk_context {int dummy; } ;
struct nk_command_buffer {int dummy; } ;
typedef  int nk_flags ;
struct TYPE_7__ {int x; int y; } ;
struct TYPE_6__ {int x; int y; } ;
struct TYPE_5__ {int width; int height; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  TYPE_1__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GLFW_CONTEXT_VERSION_MAJOR ; 
 int /*<<< orphan*/  GLFW_CONTEXT_VERSION_MINOR ; 
 int GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_SCALE_TO_MONITOR ; 
 int GLFW_TRUE ; 
 int /*<<< orphan*/  GLFW_WIN32_KEYBOARD_MENU ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  NK_ANTI_ALIASING_ON ; 
 int /*<<< orphan*/  NK_GLFW3_INSTALL_CALLBACKS ; 
 int /*<<< orphan*/  NK_STATIC ; 
 int NK_TEXT_ALIGN_LEFT ; 
 int NK_TEXT_ALIGN_MIDDLE ; 
 scalar_t__ cursor_input_message ; 
 scalar_t__ cursor_method ; 
 TYPE_4__ cursor_pos ; 
 int /*<<< orphan*/  cursor_pos_callback ; 
 scalar_t__ cursor_sync_query ; 
 TYPE_3__ cursor_vel ; 
 int /*<<< orphan*/  FUNC0 (struct nk_command_buffer*,int,int /*<<< orphan*/ ) ; 
 int enable_vsync ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  glfwGetProcAddress ; 
 double FUNC7 () ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 scalar_t__ FUNC19 (struct nk_context*,char*,struct nk_rect,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct nk_context*,char*,int*) ; 
 int /*<<< orphan*/  FUNC21 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC22 (struct nk_font_atlas**) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 struct nk_context* FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct nk_context*,char*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct nk_context*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC29 (struct nk_context*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC30 (struct nk_context*,int,int) ; 
 int /*<<< orphan*/  FUNC31 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC32 (struct nk_context*,int) ; 
 int /*<<< orphan*/  FUNC33 (struct nk_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (struct nk_context*,char*,int) ; 
 struct nk_rect FUNC35 (float,float,float,float) ; 
 int nk_true ; 
 int /*<<< orphan*/  FUNC36 (struct nk_context*,char*,float) ; 
 int /*<<< orphan*/  FUNC37 (int,int) ; 
 struct nk_command_buffer* FUNC38 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 int swap_clear ; 
 int swap_finish ; 
 int swap_occlusion_query ; 
 int swap_read_pixels ; 
 int /*<<< orphan*/  FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 () ; 

int FUNC43(int argc, char** argv)
{
    int ch, width, height;
    unsigned long frame_count = 0;
    double last_time, current_time;
    double frame_rate = 0;
    int fullscreen = GLFW_FALSE;
    GLFWmonitor* monitor = NULL;
    GLFWwindow* window;
    struct nk_context* nk;
    struct nk_font_atlas* atlas;

    int show_forecasts = nk_true;

    while ((ch = FUNC2(argc, argv, "fh")) != -1)
    {
        switch (ch)
        {
            case 'h':
                FUNC42();
                FUNC1(EXIT_SUCCESS);

            case 'f':
                fullscreen = GLFW_TRUE;
                break;
        }
    }

    FUNC14(error_callback);

    if (!FUNC10())
        FUNC1(EXIT_FAILURE);

    if (fullscreen)
    {
        const GLFWvidmode* mode;

        monitor = FUNC6();
        mode = FUNC8(monitor);

        width = mode->width;
        height = mode->height;
    }
    else
    {
        width = 640;
        height = 480;
    }

    FUNC17(GLFW_CONTEXT_VERSION_MAJOR, 2);
    FUNC17(GLFW_CONTEXT_VERSION_MINOR, 0);

    FUNC17(GLFW_SCALE_TO_MONITOR, GLFW_TRUE);
    FUNC17(GLFW_WIN32_KEYBOARD_MENU, GLFW_TRUE);

    window = FUNC5(width, height, "Input lag test", monitor, NULL);
    if (!window)
    {
        FUNC16();
        FUNC1(EXIT_FAILURE);
    }

    FUNC11(window);
    FUNC4(glfwGetProcAddress);
    FUNC41();

    last_time = FUNC7();

    nk = FUNC24(window, NK_GLFW3_INSTALL_CALLBACKS);
    FUNC22(&atlas);
    FUNC23();

    FUNC15(window, key_callback);
    FUNC13(window, cursor_pos_callback);

    while (!FUNC18(window))
    {
        int width, height;
        struct nk_rect area;

        FUNC12();
        FUNC39(window);

        FUNC9(window, &width, &height);
        area = FUNC35(0.f, 0.f, (float) width, (float) height);

        FUNC3(GL_COLOR_BUFFER_BIT);
        FUNC25();
        if (FUNC19(nk, "", area, 0))
        {
            nk_flags align_left = NK_TEXT_ALIGN_LEFT | NK_TEXT_ALIGN_MIDDLE;
            struct nk_command_buffer *canvas = FUNC38(nk);
            int lead;

            for (lead = show_forecasts ? 3 : 0; lead >= 0; lead--)
                FUNC0(canvas, lead, FUNC37(cursor_pos.x + cursor_vel.x * lead,
                                                  cursor_pos.y + cursor_vel.y * lead));

            // print instructions
            FUNC30(nk, 20, 1);
            FUNC27(nk, "Move mouse uniformly and check marker under cursor:", align_left);
            for (lead = 0; lead <= 3; lead++) {
                FUNC29(nk, NK_STATIC, 12, 2);
                FUNC32(nk, 25);
                FUNC0(canvas, lead, FUNC33(nk, FUNC37(20, 5)));
                FUNC27(nk, "", 0);
                FUNC32(nk, 500);
                if (lead == 0)
                    FUNC27(nk, "- current cursor position (no input lag)", align_left);
                else
                    FUNC28(nk, align_left, "- %d-frame forecast (input lag is %d frame)", lead, lead);
                FUNC31(nk);
            }

            FUNC30(nk, 20, 1);

            FUNC20(nk, "Show forecasts", &show_forecasts);
            FUNC27(nk, "Input method:", align_left);
            if (FUNC34(nk, "glfwGetCursorPos (sync query)", cursor_method == cursor_sync_query))
                cursor_method = cursor_sync_query;
            if (FUNC34(nk, "glfwSetCursorPosCallback (latest input message)", cursor_method == cursor_input_message))
                cursor_method = cursor_input_message;

            FUNC27(nk, "", 0); // separator

            FUNC36(nk, "FPS", (float) frame_rate);
            if (FUNC20(nk, "Enable vsync", &enable_vsync))
                FUNC41();

            FUNC27(nk, "", 0); // separator

            FUNC27(nk, "After swap:", align_left);
            FUNC20(nk, "glClear", &swap_clear);
            FUNC20(nk, "glFinish", &swap_finish);
            FUNC20(nk, "draw with occlusion query", &swap_occlusion_query);
            FUNC20(nk, "glReadPixels", &swap_read_pixels);
        }

        FUNC21(nk);
        FUNC26(NK_ANTI_ALIASING_ON);

        FUNC40(window);

        frame_count++;

        current_time = FUNC7();
        if (current_time - last_time > 1.0)
        {
            frame_rate = frame_count / (current_time - last_time);
            frame_count = 0;
            last_time = current_time;
        }
    }

    FUNC16();
    FUNC1(EXIT_SUCCESS);
}