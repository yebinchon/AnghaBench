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
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 scalar_t__ GLAD_GL_ARB_multisample ; 
 scalar_t__ GLAD_GL_VERSION_1_3 ; 
 int /*<<< orphan*/  GLFW_SAMPLES ; 
 int /*<<< orphan*/  GL_MULTISAMPLE_ARB ; 
 int /*<<< orphan*/  cursorPosFun ; 
 scalar_t__ do_redraw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  glfwGetProcAddress ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  mouseButtonFun ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  width ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

int FUNC20(void)
{
    GLFWwindow* window;

    // Initialise GLFW
    if (!FUNC7())
    {
        FUNC1(stderr, "Failed to initialize GLFW\n");
        FUNC0(EXIT_FAILURE);
    }

    FUNC17(GLFW_SAMPLES, 4);

    // Open OpenGL window
    window = FUNC5(500, 500, "Split view demo", NULL, NULL);
    if (!window)
    {
        FUNC1(stderr, "Failed to open GLFW window\n");

        FUNC15();
        FUNC0(EXIT_FAILURE);
    }

    // Set callback functions
    FUNC10(window, framebufferSizeFun);
    FUNC13(window, windowRefreshFun);
    FUNC9(window, cursorPosFun);
    FUNC12(window, mouseButtonFun);
    FUNC11(window, key_callback);

    // Enable vsync
    FUNC8(window);
    FUNC4(glfwGetProcAddress);
    FUNC14(1);

    if (GLAD_GL_ARB_multisample || GLAD_GL_VERSION_1_3)
        FUNC3(GL_MULTISAMPLE_ARB);

    FUNC6(window, &width, &height);
    FUNC2(window, width, height);

    // Main loop
    for (;;)
    {
        // Only redraw if we need to
        if (do_redraw)
            FUNC19(window);

        // Wait for new events
        FUNC16();

        // Check if the window should be closed
        if (FUNC18(window))
            break;
    }

    // Close OpenGL window and terminate GLFW
    FUNC15();

    FUNC0(EXIT_SUCCESS);
}