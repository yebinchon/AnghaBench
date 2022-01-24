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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float,float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  glfwGetProcAddress ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 () ; 

int FUNC17(int argc, char** argv)
{
    int ch;
    GLFWwindow* window;

    while ((ch = FUNC2(argc, argv, "h")) != -1)
    {
        switch (ch)
        {
            case 'h':
                FUNC16();
                FUNC0(EXIT_SUCCESS);

            default:
                FUNC16();
                FUNC0(EXIT_FAILURE);
        }
    }

    FUNC9(error_callback);

    if (!FUNC7())
    {
        FUNC1(stderr, "Failed to initialize GLFW\n");
        FUNC0(EXIT_FAILURE);
    }

    window = FUNC6(200, 200, "Clipboard Test", NULL, NULL);
    if (!window)
    {
        FUNC13();

        FUNC1(stderr, "Failed to open GLFW window\n");
        FUNC0(EXIT_FAILURE);
    }

    FUNC8(window);
    FUNC5(glfwGetProcAddress);
    FUNC12(1);

    FUNC10(window, key_callback);

    FUNC4(0.5f, 0.5f, 0.5f, 0);

    while (!FUNC15(window))
    {
        FUNC3(GL_COLOR_BUFFER_BIT);

        FUNC11(window);
        FUNC14();
    }

    FUNC13();
    FUNC0(EXIT_SUCCESS);
}