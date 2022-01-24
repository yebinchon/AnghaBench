#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/ * extensions; } ;
struct TYPE_4__ {TYPE_1__ vk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _GLFW_REQUIRE_LOADER ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

const char** FUNC3(uint32_t* count)
{
    FUNC2(count != NULL);

    *count = 0;

    FUNC0(NULL);

    if (!FUNC1(_GLFW_REQUIRE_LOADER))
        return NULL;

    if (!_glfw.vk.extensions[0])
        return NULL;

    *count = 2;
    return (const char**) _glfw.vk.extensions;
}