#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int width; int height; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  handle; } ;
struct TYPE_9__ {TYPE_1__ osmesa; } ;
struct TYPE_10__ {TYPE_2__ context; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_11__ {int /*<<< orphan*/  contextSlot; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 TYPE_7__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(_GLFWwindow* window)
{
    if (window)
    {
        int width, height;
        FUNC2(window, &width, &height);

        // Check to see if we need to allocate a new buffer
        if ((window->context.osmesa.buffer == NULL) ||
            (width != window->context.osmesa.width) ||
            (height != window->context.osmesa.height))
        {
            FUNC5(window->context.osmesa.buffer);

            // Allocate the new buffer (width * height * 8-bit RGBA)
            window->context.osmesa.buffer = FUNC4(4, (size_t) width * height);
            window->context.osmesa.width  = width;
            window->context.osmesa.height = height;
        }

        if (!FUNC0(window->context.osmesa.handle,
                               window->context.osmesa.buffer,
                               GL_UNSIGNED_BYTE,
                               width, height))
        {
            FUNC1(GLFW_PLATFORM_ERROR,
                            "OSMesa: Failed to make context current");
            return;
        }
    }

    FUNC3(&_glfw.contextSlot, window);
}