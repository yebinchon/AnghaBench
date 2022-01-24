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
 int /*<<< orphan*/  GLFW_DEPTH_BITS ; 
 int /*<<< orphan*/  GLFW_TRANSPARENT_FRAMEBUFFER ; 
 int GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  glfwGetProcAddress ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int,int)) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  key ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC19(int argc, char *argv[])
{
    GLFWwindow* window;
    int width, height;

    if( !FUNC7() )
    {
        FUNC3( stderr, "Failed to initialize GLFW\n" );
        FUNC2( EXIT_FAILURE );
    }

    FUNC15(GLFW_DEPTH_BITS, 16);
    FUNC15(GLFW_TRANSPARENT_FRAMEBUFFER, GLFW_TRUE);

    window = FUNC5( 300, 300, "Gears", NULL, NULL );
    if (!window)
    {
        FUNC3( stderr, "Failed to open GLFW window\n" );
        FUNC14();
        FUNC2( EXIT_FAILURE );
    }

    // Set callback functions
    FUNC10(window, reshape);
    FUNC11(window, key);

    FUNC8(window);
    FUNC4(glfwGetProcAddress);
    FUNC13( 1 );

    FUNC6(window, &width, &height);
    FUNC18(window, width, height);

    // Parse command-line options
    FUNC17();

    // Main loop
    while( !FUNC16(window) )
    {
        // Draw gears
        FUNC1();

        // Update animation
        FUNC0();

        // Swap buffers
        FUNC12(window);
        FUNC9();
    }

    // Terminate GLFW
    FUNC14();

    // Exit program
    FUNC2( EXIT_SUCCESS );
}