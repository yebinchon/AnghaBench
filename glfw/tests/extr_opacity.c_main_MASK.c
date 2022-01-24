#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nk_rect {int dummy; } ;
struct nk_font_atlas {int dummy; } ;
struct nk_context {int dummy; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;

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
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  glfwGetProcAddress ; 
 float FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (double) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct nk_context*,char*,struct nk_rect,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct nk_context*) ; 
 int /*<<< orphan*/  FUNC18 (struct nk_font_atlas**) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 struct nk_context* FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (struct nk_context*,int /*<<< orphan*/ ,char*,float) ; 
 int /*<<< orphan*/  FUNC25 (struct nk_context*,int,int) ; 
 struct nk_rect FUNC26 (float,float,float,float) ; 
 scalar_t__ FUNC27 (struct nk_context*,float,float*,float,float) ; 

int FUNC28(int argc, char** argv)
{
    GLFWwindow* window;
    struct nk_context* nk;
    struct nk_font_atlas* atlas;

    FUNC8(error_callback);

    if (!FUNC6())
        FUNC0(EXIT_FAILURE);

    FUNC14(GLFW_SCALE_TO_MONITOR, GLFW_TRUE);
    FUNC14(GLFW_WIN32_KEYBOARD_MENU, GLFW_TRUE);

    window = FUNC3(400, 400, "Opacity", NULL, NULL);
    if (!window)
    {
        FUNC12();
        FUNC0(EXIT_FAILURE);
    }

    FUNC7(window);
    FUNC2(glfwGetProcAddress);
    FUNC11(1);

    nk = FUNC20(window, NK_GLFW3_INSTALL_CALLBACKS);
    FUNC18(&atlas);
    FUNC19();

    while (!FUNC15(window))
    {
        int width, height;
        struct nk_rect area;

        FUNC5(window, &width, &height);
        area = FUNC26(0.f, 0.f, (float) width, (float) height);

        FUNC1(GL_COLOR_BUFFER_BIT);
        FUNC21();
        if (FUNC16(nk, "", area, 0))
        {
            float opacity = FUNC4(window);
            FUNC25(nk, 30, 2);
            if (FUNC27(nk, 0.f, &opacity, 1.f, 0.001f))
                FUNC9(window, opacity);
            FUNC24(nk, NK_TEXT_LEFT, "%0.3f", opacity);
        }

        FUNC17(nk);
        FUNC22(NK_ANTI_ALIASING_ON);

        FUNC10(window);
        FUNC13(1.0);
    }

    FUNC23();
    FUNC12();
    FUNC0(EXIT_SUCCESS);
}