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
typedef  int /*<<< orphan*/  GLFWimage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(GLFWwindow* handle,
                               int count, const GLFWimage* images)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    FUNC2(window != NULL);
    FUNC2(count >= 0);
    FUNC2(count == 0 || images != NULL);

    FUNC0();
    FUNC1(window, count, images);
}