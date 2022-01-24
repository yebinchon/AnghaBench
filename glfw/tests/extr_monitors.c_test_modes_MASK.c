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
struct TYPE_4__ {scalar_t__ redBits; scalar_t__ greenBits; scalar_t__ blueBits; scalar_t__ refreshRate; int width; scalar_t__ height; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  TYPE_1__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GLFW_BLUE_BITS ; 
 int /*<<< orphan*/  GLFW_GREEN_BITS ; 
 int /*<<< orphan*/  GLFW_RED_BITS ; 
 int /*<<< orphan*/  GLFW_REFRESH_RATE ; 
 int /*<<< orphan*/  GL_BLUE_BITS ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_GREEN_BITS ; 
 int /*<<< orphan*/  GL_RED_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  framebuffer_size_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  glfwGetProcAddress ; 
 double FUNC9 () ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (double) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 

__attribute__((used)) static void FUNC23(GLFWmonitor* monitor)
{
    int i, count;
    GLFWwindow* window;
    const GLFWvidmode* modes = FUNC10(monitor, &count);

    for (i = 0;  i < count;  i++)
    {
        const GLFWvidmode* mode = modes + i;
        GLFWvidmode current;

        FUNC20(GLFW_RED_BITS, mode->redBits);
        FUNC20(GLFW_GREEN_BITS, mode->greenBits);
        FUNC20(GLFW_BLUE_BITS, mode->blueBits);
        FUNC20(GLFW_REFRESH_RATE, mode->refreshRate);

        FUNC22("Testing mode %u on monitor %s: %s\n",
               (unsigned int) i,
               FUNC7(monitor),
               FUNC1(mode));

        window = FUNC5(mode->width, mode->height,
                                  "Video Mode Test",
                                  FUNC8(),
                                  NULL);
        if (!window)
        {
            FUNC22("Failed to enter mode %u: %s\n",
                   (unsigned int) i,
                   FUNC1(mode));
            continue;
        }

        FUNC14(window, framebuffer_size_callback);
        FUNC15(window, key_callback);

        FUNC12(window);
        FUNC4(glfwGetProcAddress);
        FUNC18(1);

        FUNC16(0.0);

        while (FUNC9() < 5.0)
        {
            FUNC2(GL_COLOR_BUFFER_BIT);
            FUNC17(window);
            FUNC13();

            if (FUNC21(window))
            {
                FUNC22("User terminated program\n");

                FUNC19();
                FUNC0(EXIT_SUCCESS);
            }
        }

        FUNC3(GL_RED_BITS, &current.redBits);
        FUNC3(GL_GREEN_BITS, &current.greenBits);
        FUNC3(GL_BLUE_BITS, &current.blueBits);

        FUNC11(window, &current.width, &current.height);

        if (current.redBits != mode->redBits ||
            current.greenBits != mode->greenBits ||
            current.blueBits != mode->blueBits)
        {
            FUNC22("*** Color bit mismatch: (%i %i %i) instead of (%i %i %i)\n",
                   current.redBits, current.greenBits, current.blueBits,
                   mode->redBits, mode->greenBits, mode->blueBits);
        }

        if (current.width != mode->width || current.height != mode->height)
        {
            FUNC22("*** Size mismatch: %ix%i instead of %ix%i\n",
                   current.width, current.height,
                   mode->width, mode->height);
        }

        FUNC22("Closing window\n");

        FUNC6(window);
        window = NULL;

        FUNC13();
    }
}