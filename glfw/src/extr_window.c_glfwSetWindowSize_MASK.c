#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int width; int height; } ;
struct TYPE_5__ {TYPE_1__ videoMode; } ;
typedef  TYPE_2__ _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(GLFWwindow* handle, int width, int height)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    FUNC2(window != NULL);
    FUNC2(width >= 0);
    FUNC2(height >= 0);

    FUNC0();

    window->videoMode.width  = width;
    window->videoMode.height = height;

    FUNC1(window, width, height);
}