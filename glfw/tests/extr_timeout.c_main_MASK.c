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
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  glfwGetProcAddress ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (double) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 float FUNC16 () ; 
 scalar_t__ FUNC17 (float) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 

int FUNC20(void)
{
    GLFWwindow* window;

    FUNC18((unsigned int) FUNC19(NULL));

    FUNC10(error_callback);

    if (!FUNC8())
        FUNC0(EXIT_FAILURE);

    window = FUNC5(640, 480, "Event Wait Timeout Test", NULL, NULL);
    if (!window)
    {
        FUNC13();
        FUNC0(EXIT_FAILURE);
    }

    FUNC9(window);
    FUNC4(glfwGetProcAddress);
    FUNC11(window, key_callback);

    while (!FUNC15(window))
    {
        int width, height;
        float r = FUNC16(), g = FUNC16(), b = FUNC16();
        float l = (float) FUNC17(r * r + g * g + b * b);

        FUNC7(window, &width, &height);

        FUNC3(0, 0, width, height);
        FUNC2(r / l, g / l, b / l, 1.f);
        FUNC1(GL_COLOR_BUFFER_BIT);
        FUNC12(window);

        FUNC14(1.0);
    }

    FUNC6(window);

    FUNC13();
    FUNC0(EXIT_SUCCESS);
}