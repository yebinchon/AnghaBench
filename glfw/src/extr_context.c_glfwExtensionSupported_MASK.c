#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int major; int (* extensionSupported ) (char const*) ;scalar_t__ (* GetString ) (int /*<<< orphan*/ ) ;scalar_t__ (* GetStringi ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* GetIntegerv ) (int /*<<< orphan*/ ,int*) ;} ;
struct TYPE_6__ {TYPE_1__ context; } ;
typedef  TYPE_2__ _GLFWwindow ;
struct TYPE_7__ {int /*<<< orphan*/  contextSlot; } ;
typedef  int GLint ;

/* Variables and functions */
 int GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_INVALID_VALUE ; 
 int /*<<< orphan*/  GLFW_NO_CURRENT_CONTEXT ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int GLFW_TRUE ; 
 int /*<<< orphan*/  GL_EXTENSIONS ; 
 int /*<<< orphan*/  GL_NUM_EXTENSIONS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (char const*) ; 

int FUNC10(const char* extension)
{
    _GLFWwindow* window;
    FUNC4(extension != NULL);

    FUNC0(GLFW_FALSE);

    window = FUNC2(&_glfw.contextSlot);
    if (!window)
    {
        FUNC1(GLFW_NO_CURRENT_CONTEXT,
                        "Cannot query extension without a current OpenGL or OpenGL ES context");
        return GLFW_FALSE;
    }

    if (*extension == '\0')
    {
        FUNC1(GLFW_INVALID_VALUE, "Extension name cannot be an empty string");
        return GLFW_FALSE;
    }

    if (window->context.major >= 3)
    {
        int i;
        GLint count;

        // Check if extension is in the modern OpenGL extensions string list

        window->context.GetIntegerv(GL_NUM_EXTENSIONS, &count);

        for (i = 0;  i < count;  i++)
        {
            const char* en = (const char*)
                window->context.GetStringi(GL_EXTENSIONS, i);
            if (!en)
            {
                FUNC1(GLFW_PLATFORM_ERROR,
                                "Extension string retrieval is broken");
                return GLFW_FALSE;
            }

            if (FUNC5(en, extension) == 0)
                return GLFW_TRUE;
        }
    }
    else
    {
        // Check if extension is in the old style OpenGL extensions string

        const char* extensions = (const char*)
            window->context.GetString(GL_EXTENSIONS);
        if (!extensions)
        {
            FUNC1(GLFW_PLATFORM_ERROR,
                            "Extension string retrieval is broken");
            return GLFW_FALSE;
        }

        if (FUNC3(extension, extensions))
            return GLFW_TRUE;
    }

    // Check if extension is in the platform-specific string
    return window->context.extensionSupported(extension);
}