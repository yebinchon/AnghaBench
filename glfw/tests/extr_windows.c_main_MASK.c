#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GLFW_DECORATED ; 
 int GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_FOCUS_ON_SHOW ; 
 int GLFW_TRUE ; 
 int /*<<< orphan*/  GLFW_VISIBLE ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 TYPE_1__* colors ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  glfwGetProcAddress ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/ * titles ; 
 int /*<<< orphan*/  FUNC18 () ; 

int FUNC19(int argc, char** argv)
{
    int i, ch;
    int decorated = GLFW_FALSE;
    int focusOnShow = GLFW_TRUE;
    int running = GLFW_TRUE;
    GLFWwindow* windows[4];

    while ((ch = FUNC1(argc, argv, "bfh")) != -1)
    {
        switch (ch)
        {
            case 'b':
                decorated = GLFW_TRUE;
                break;
            case 'f':
                focusOnShow = GLFW_FALSE;
                break;
            case 'h':
                FUNC18();
                FUNC0(EXIT_SUCCESS);
            default:
                FUNC18();
                FUNC0(EXIT_FAILURE);
        }
    }

    FUNC9(error_callback);

    if (!FUNC7())
        FUNC0(EXIT_FAILURE);

    FUNC16(GLFW_DECORATED, decorated);
    FUNC16(GLFW_VISIBLE, GLFW_FALSE);

    for (i = 0;  i < 4;  i++)
    {
        int left, top, right, bottom;
        if (i)
            FUNC16(GLFW_FOCUS_ON_SHOW, focusOnShow);

        windows[i] = FUNC5(200, 200, titles[i], NULL, NULL);
        if (!windows[i])
        {
            FUNC14();
            FUNC0(EXIT_FAILURE);
        }

        FUNC10(windows[i], key_callback);

        FUNC8(windows[i]);
        FUNC4(glfwGetProcAddress);
        FUNC3(colors[i].r, colors[i].g, colors[i].b, 1.f);

        FUNC6(windows[i], &left, &top, &right, &bottom);
        FUNC11(windows[i],
                         100 + (i & 1) * (200 + left + right),
                         100 + (i >> 1) * (200 + top + bottom));
    }

    for (i = 0;  i < 4;  i++)
        FUNC12(windows[i]);

    while (running)
    {
        for (i = 0;  i < 4;  i++)
        {
            FUNC8(windows[i]);
            FUNC2(GL_COLOR_BUFFER_BIT);
            FUNC13(windows[i]);

            if (FUNC17(windows[i]))
                running = GLFW_FALSE;
        }

        FUNC15();
    }

    FUNC14();
    FUNC0(EXIT_SUCCESS);
}