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
typedef  int /*<<< orphan*/  thrd_t ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 scalar_t__ GLFW_FALSE ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  glfwGetProcAddress ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 float FUNC18 () ; 
 scalar_t__ running ; 
 scalar_t__ FUNC19 (float) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ thrd_success ; 
 int /*<<< orphan*/  thread_main ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 

int FUNC24(void)
{
    int result;
    thrd_t thread;
    GLFWwindow* window;

    FUNC20((unsigned int) FUNC23(NULL));

    FUNC12(error_callback);

    if (!FUNC10())
        FUNC0(EXIT_FAILURE);

    window = FUNC6(640, 480, "Empty Event Test", NULL, NULL);
    if (!window)
    {
        FUNC15();
        FUNC0(EXIT_FAILURE);
    }

    FUNC11(window);
    FUNC5(glfwGetProcAddress);
    FUNC13(window, key_callback);

    if (FUNC21(&thread, thread_main, NULL) != thrd_success)
    {
        FUNC1(stderr, "Failed to create secondary thread\n");

        FUNC15();
        FUNC0(EXIT_FAILURE);
    }

    while (running)
    {
        int width, height;
        float r = FUNC18(), g = FUNC18(), b = FUNC18();
        float l = (float) FUNC19(r * r + g * g + b * b);

        FUNC8(window, &width, &height);

        FUNC4(0, 0, width, height);
        FUNC3(r / l, g / l, b / l, 1.f);
        FUNC2(GL_COLOR_BUFFER_BIT);
        FUNC14(window);

        FUNC16();

        if (FUNC17(window))
            running = GLFW_FALSE;
    }

    FUNC9(window);
    FUNC22(thread, &result);
    FUNC7(window);

    FUNC15();
    FUNC0(EXIT_SUCCESS);
}