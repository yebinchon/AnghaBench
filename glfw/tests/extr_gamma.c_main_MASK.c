#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nk_rect {int dummy; } ;
struct nk_font_atlas {int dummy; } ;
struct nk_context {int dummy; } ;
struct TYPE_4__ {int size; void* blue; void* green; void* red; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWmonitor ;
typedef  TYPE_1__ GLFWgammaramp ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GLFW_SCALE_TO_MONITOR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/  GLFW_WIN32_KEYBOARD_MENU ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  NK_ANTI_ALIASING_ON ; 
 int /*<<< orphan*/  NK_GLFW3_INSTALL_CALLBACKS ; 
 int /*<<< orphan*/  NK_TEXT_LEFT ; 
 int /*<<< orphan*/  FUNC0 (struct nk_context*,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  glfwGetProcAddress ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (double) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 void* FUNC21 (size_t const) ; 
 int /*<<< orphan*/  FUNC22 (void*,void*,size_t const) ; 
 scalar_t__ FUNC23 (struct nk_context*,char*,struct nk_rect,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct nk_context*,char*) ; 
 int /*<<< orphan*/  FUNC25 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC26 (struct nk_font_atlas**) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 struct nk_context* FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (struct nk_context*,int /*<<< orphan*/ ,char*,float) ; 
 int /*<<< orphan*/  FUNC33 (struct nk_context*,int,int) ; 
 struct nk_rect FUNC34 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC35 (int,int,int) ; 
 scalar_t__ FUNC36 (struct nk_context*,float,float*,float,float) ; 
 int /*<<< orphan*/  FUNC37 (struct nk_context*,char*,struct nk_rect) ; 

int FUNC38(int argc, char** argv)
{
    GLFWmonitor* monitor = NULL;
    GLFWwindow* window;
    GLFWgammaramp orig_ramp;
    struct nk_context* nk;
    struct nk_font_atlas* atlas;
    float gamma_value = 1.f;

    FUNC11(error_callback);

    if (!FUNC9())
        FUNC1(EXIT_FAILURE);

    monitor = FUNC7();

    FUNC19(GLFW_SCALE_TO_MONITOR, GLFW_TRUE);
    FUNC19(GLFW_WIN32_KEYBOARD_MENU, GLFW_TRUE);

    window = FUNC5(800, 400, "Gamma Test", NULL, NULL);
    if (!window)
    {
        FUNC17();
        FUNC1(EXIT_FAILURE);
    }

    {
        const GLFWgammaramp* ramp = FUNC6(monitor);
        const size_t array_size = ramp->size * sizeof(short);
        orig_ramp.size = ramp->size;
        orig_ramp.red = FUNC21(array_size);
        orig_ramp.green = FUNC21(array_size);
        orig_ramp.blue = FUNC21(array_size);
        FUNC22(orig_ramp.red, ramp->red, array_size);
        FUNC22(orig_ramp.green, ramp->green, array_size);
        FUNC22(orig_ramp.blue, ramp->blue, array_size);
    }

    FUNC10(window);
    FUNC4(glfwGetProcAddress);
    FUNC16(1);

    nk = FUNC28(window, NK_GLFW3_INSTALL_CALLBACKS);
    FUNC26(&atlas);
    FUNC27();

    FUNC14(window, key_callback);

    while (!FUNC20(window))
    {
        int width, height;
        struct nk_rect area;

        FUNC8(window, &width, &height);
        area = FUNC34(0.f, 0.f, (float) width, (float) height);
        FUNC37(nk, "", area);

        FUNC3(GL_COLOR_BUFFER_BIT);
        FUNC29();
        if (FUNC23(nk, "", area, 0))
        {
            const GLFWgammaramp* ramp;

            FUNC33(nk, 30, 3);
            if (FUNC36(nk, 0.1f, &gamma_value, 5.f, 0.1f))
                FUNC12(monitor, gamma_value);
            FUNC32(nk, NK_TEXT_LEFT, "%0.1f", gamma_value);
            if (FUNC24(nk, "Revert"))
                FUNC13(monitor, &orig_ramp);

            ramp = FUNC6(monitor);

            FUNC33(nk, height - 60.f, 3);
            FUNC0(nk, FUNC35(255, 0, 0), ramp->size, ramp->red);
            FUNC0(nk, FUNC35(0, 255, 0), ramp->size, ramp->green);
            FUNC0(nk, FUNC35(0, 0, 255), ramp->size, ramp->blue);
        }

        FUNC25(nk);
        FUNC30(NK_ANTI_ALIASING_ON);

        FUNC15(window);
        FUNC18(1.0);
    }

    FUNC2(orig_ramp.red);
    FUNC2(orig_ramp.green);
    FUNC2(orig_ramp.blue);

    FUNC31();
    FUNC17();
    FUNC1(EXIT_SUCCESS);
}