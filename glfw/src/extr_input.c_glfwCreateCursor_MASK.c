#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef  TYPE_1__ _GLFWcursor ;
struct TYPE_6__ {TYPE_1__* cursorListHead; } ;
typedef  int /*<<< orphan*/  GLFWimage ;
typedef  int /*<<< orphan*/  GLFWcursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

GLFWcursor* FUNC5(const GLFWimage* image, int xhot, int yhot)
{
    _GLFWcursor* cursor;

    FUNC2(image != NULL);

    FUNC0(NULL);

    cursor = FUNC3(1, sizeof(_GLFWcursor));
    cursor->next = _glfw.cursorListHead;
    _glfw.cursorListHead = cursor;

    if (!FUNC1(cursor, image, xhot, yhot))
    {
        FUNC4((GLFWcursor*) cursor);
        return NULL;
    }

    return (GLFWcursor*) cursor;
}