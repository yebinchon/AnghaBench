#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * cursor; } ;
typedef  TYPE_1__ _GLFWwindow ;
typedef  int /*<<< orphan*/  _GLFWcursor ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWcursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(GLFWwindow* windowHandle, GLFWcursor* cursorHandle)
{
    _GLFWwindow* window = (_GLFWwindow*) windowHandle;
    _GLFWcursor* cursor = (_GLFWcursor*) cursorHandle;
    FUNC2(window != NULL);

    FUNC0();

    window->cursor = cursor;

    FUNC1(window, cursor);
}