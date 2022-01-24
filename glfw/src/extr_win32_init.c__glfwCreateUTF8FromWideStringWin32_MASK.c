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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

char* FUNC4(const WCHAR* source)
{
    char* target;
    int size;

    size = FUNC0(CP_UTF8, 0, source, -1, NULL, 0, NULL, NULL);
    if (!size)
    {
        FUNC1(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to convert string to UTF-8");
        return NULL;
    }

    target = FUNC2(size, 1);

    if (!FUNC0(CP_UTF8, 0, source, -1, target, size, NULL, NULL))
    {
        FUNC1(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to convert string to UTF-8");
        FUNC3(target);
        return NULL;
    }

    return target;
}