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
typedef  int /*<<< orphan*/  _GLFWwndconfig ;
typedef  int /*<<< orphan*/  _GLFWwindow ;
typedef  int /*<<< orphan*/  _GLFWfbconfig ;
struct TYPE_4__ {scalar_t__ client; scalar_t__ source; } ;
typedef  TYPE_1__ _GLFWctxconfig ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_API_UNAVAILABLE ; 
 int GLFW_FALSE ; 
 scalar_t__ GLFW_NATIVE_CONTEXT_API ; 
 scalar_t__ GLFW_NO_API ; 
 scalar_t__ GLFW_OSMESA_CONTEXT_API ; 
 int GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC4(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig)
{
    if (!FUNC3(window, wndconfig))
        return GLFW_FALSE;

    if (ctxconfig->client != GLFW_NO_API)
    {
        if (ctxconfig->source == GLFW_NATIVE_CONTEXT_API ||
            ctxconfig->source == GLFW_OSMESA_CONTEXT_API)
        {
            if (!FUNC1())
                return GLFW_FALSE;
            if (!FUNC0(window, ctxconfig, fbconfig))
                return GLFW_FALSE;
        }
        else
        {
            FUNC2(GLFW_API_UNAVAILABLE, "Null: EGL not available");
            return GLFW_FALSE;
        }
    }

    return GLFW_TRUE;
}