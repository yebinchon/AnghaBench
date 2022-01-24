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

/* Variables and functions */
 int /*<<< orphan*/  GLFW_INVALID_ENUM ; 
 int GLFW_KEY_LAST ; 
 int GLFW_KEY_SPACE ; 
 int GLFW_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int) ; 

int FUNC3(int key)
{
    FUNC0(-1);

    if (key < GLFW_KEY_SPACE || key > GLFW_KEY_LAST)
    {
        FUNC1(GLFW_INVALID_ENUM, "Invalid key %i", key);
        return GLFW_RELEASE;
    }

    return FUNC2(key);
}