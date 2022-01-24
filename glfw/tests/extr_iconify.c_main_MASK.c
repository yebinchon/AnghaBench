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
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_FOCUSED ; 
 int /*<<< orphan*/  GLFW_ICONIFIED ; 
 int GLFW_TRUE ; 
 int /*<<< orphan*/ ** FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  framebuffer_size_callback ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/ ** FUNC5 (int*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  window_focus_callback ; 
 int /*<<< orphan*/  window_iconify_callback ; 
 int /*<<< orphan*/  window_maximize_callback ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  window_size_callback ; 

int FUNC23(int argc, char** argv)
{
    int ch, i, window_count;
    int fullscreen = GLFW_FALSE, all_monitors = GLFW_FALSE;
    GLFWwindow** windows;

    while ((ch = FUNC4(argc, argv, "afhn")) != -1)
    {
        switch (ch)
        {
            case 'a':
                all_monitors = GLFW_TRUE;
                break;

            case 'h':
                FUNC21();
                FUNC2(EXIT_SUCCESS);

            case 'f':
                fullscreen = GLFW_TRUE;
                break;

            default:
                FUNC21();
                FUNC2(EXIT_FAILURE);
        }
    }

    FUNC9(error_callback);

    if (!FUNC8())
        FUNC2(EXIT_FAILURE);

    if (fullscreen && all_monitors)
    {
        int monitor_count;
        GLFWmonitor** monitors = FUNC5(&monitor_count);

        window_count = monitor_count;
        windows = FUNC0(window_count, sizeof(GLFWwindow*));

        for (i = 0;  i < monitor_count;  i++)
        {
            windows[i] = FUNC1(monitors[i]);
            if (!windows[i])
                break;
        }
    }
    else
    {
        GLFWmonitor* monitor = NULL;

        if (fullscreen)
            monitor = FUNC6();

        window_count = 1;
        windows = FUNC0(window_count, sizeof(GLFWwindow*));
        windows[0] = FUNC1(monitor);
    }

    for (i = 0;  i < window_count;  i++)
    {
        FUNC11(windows[i], key_callback);
        FUNC10(windows[i], framebuffer_size_callback);
        FUNC16(windows[i], window_size_callback);
        FUNC12(windows[i], window_focus_callback);
        FUNC13(windows[i], window_iconify_callback);
        FUNC14(windows[i], window_maximize_callback);
        FUNC15(windows[i], window_refresh_callback);

        FUNC22(windows[i]);

        FUNC20("Window is %s and %s\n",
            FUNC7(windows[i], GLFW_ICONIFIED) ? "iconified" : "restored",
            FUNC7(windows[i], GLFW_FOCUSED) ? "focused" : "defocused");
    }

    for (;;)
    {
        FUNC18();

        for (i = 0;  i < window_count;  i++)
        {
            if (FUNC19(windows[i]))
                break;
        }

        if (i < window_count)
            break;

        // Workaround for an issue with msvcrt and mintty
        FUNC3(stdout);
    }

    FUNC17();
    FUNC2(EXIT_SUCCESS);
}