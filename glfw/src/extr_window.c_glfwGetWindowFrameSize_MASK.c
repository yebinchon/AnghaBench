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
typedef  int /*<<< orphan*/  _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(GLFWwindow* handle,
                                    int* left, int* top,
                                    int* right, int* bottom)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    FUNC2(window != NULL);

    if (left)
        *left = 0;
    if (top)
        *top = 0;
    if (right)
        *right = 0;
    if (bottom)
        *bottom = 0;

    FUNC0();
    FUNC1(window, left, top, right, bottom);
}