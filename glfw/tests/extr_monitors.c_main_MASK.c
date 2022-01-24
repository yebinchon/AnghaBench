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
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int LIST_MODE ; 
 int TEST_MODE ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/ ** FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int argc, char** argv)
{
    int ch, i, count, mode = LIST_MODE;
    GLFWmonitor** monitors;

    while ((ch = FUNC1(argc, argv, "th")) != -1)
    {
        switch (ch)
        {
            case 'h':
                FUNC8();
                FUNC0(EXIT_SUCCESS);
            case 't':
                mode = TEST_MODE;
                break;
            default:
                FUNC8();
                FUNC0(EXIT_FAILURE);
        }
    }

    FUNC4(error_callback);

    if (!FUNC3())
        FUNC0(EXIT_FAILURE);

    monitors = FUNC2(&count);

    for (i = 0;  i < count;  i++)
    {
        if (mode == LIST_MODE)
            FUNC6(monitors[i]);
        else if (mode == TEST_MODE)
            FUNC7(monitors[i]);
    }

    FUNC5();
    FUNC0(EXIT_SUCCESS);
}