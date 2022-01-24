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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

WCHAR* FUNC4(const char* source)
{
    WCHAR* target;
    int count;

    count = FUNC0(CP_UTF8, 0, source, -1, NULL, 0);
    if (!count)
    {
        FUNC1(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to convert string from UTF-8");
        return NULL;
    }

    target = FUNC2(count, sizeof(WCHAR));

    if (!FUNC0(CP_UTF8, 0, source, -1, target, count))
    {
        FUNC1(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to convert string from UTF-8");
        FUNC3(target);
        return NULL;
    }

    return target;
}