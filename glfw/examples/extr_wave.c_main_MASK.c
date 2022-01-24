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
 double MAX_DELTA_T ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  cursor_position_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 double dt ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  glfwGetProcAddress ; 
 double FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int,int)) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  mouse_button_callback ; 
 int /*<<< orphan*/  scroll_callback ; 

int FUNC24(int argc, char* argv[])
{
    GLFWwindow* window;
    double t, dt_total, t_old;
    int width, height;

    FUNC13(error_callback);

    if (!FUNC9())
        FUNC3(EXIT_FAILURE);

    window = FUNC6(640, 480, "Wave Simulation", NULL, NULL);
    if (!window)
    {
        FUNC19();
        FUNC3(EXIT_FAILURE);
    }

    FUNC15(window, key_callback);
    FUNC14(window, framebuffer_size_callback);
    FUNC16(window, mouse_button_callback);
    FUNC12(window, cursor_position_callback);
    FUNC17(window, scroll_callback);

    FUNC10(window);
    FUNC5(glfwGetProcAddress);
    FUNC18(1);

    FUNC7(window, &width, &height);
    FUNC4(window, width, height);

    // Initialize OpenGL
    FUNC22();

    // Initialize simulation
    FUNC23();
    FUNC21();
    FUNC0();

    // Initialize timer
    t_old = FUNC8() - 0.01;

    while (!FUNC20(window))
    {
        t = FUNC8();
        dt_total = t - t_old;
        t_old = t;

        // Safety - iterate if dt_total is too large
        while (dt_total > 0.f)
        {
            // Select iteration time step
            dt = dt_total > MAX_DELTA_T ? MAX_DELTA_T : dt_total;
            dt_total -= dt;

            // Calculate wave propagation
            FUNC1();
        }

        // Compute height of each vertex
        FUNC0();

        // Draw wave grid to OpenGL display
        FUNC2(window);

        FUNC11();
    }

    FUNC19();
    FUNC3(EXIT_SUCCESS);
}