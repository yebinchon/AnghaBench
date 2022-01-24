#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ client; } ;
struct TYPE_7__ {TYPE_1__ egl; } ;
struct TYPE_8__ {TYPE_2__ context; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_9__ {int /*<<< orphan*/  contextSlot; } ;
typedef  scalar_t__ GLFWglproc ;

/* Variables and functions */
 TYPE_5__ _glfw ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static GLFWglproc FUNC3(const char* procname)
{
    _GLFWwindow* window = FUNC0(&_glfw.contextSlot);

    if (window->context.egl.client)
    {
        GLFWglproc proc = (GLFWglproc) FUNC1(window->context.egl.client,
                                                   procname);
        if (proc)
            return proc;
    }

    return FUNC2(procname);
}