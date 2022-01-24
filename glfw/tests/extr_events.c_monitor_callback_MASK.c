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
struct TYPE_3__ {int width; int height; } ;
typedef  TYPE_1__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int GLFW_CONNECTED ; 
 int GLFW_DISCONNECTED ; 
 int /*<<< orphan*/  counter ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int*) ; 
 double FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,double,char*,...) ; 

__attribute__((used)) static void FUNC6(GLFWmonitor* monitor, int event)
{
    if (event == GLFW_CONNECTED)
    {
        int x, y, widthMM, heightMM;
        const GLFWvidmode* mode = FUNC4(monitor);

        FUNC2(monitor, &x, &y);
        FUNC1(monitor, &widthMM, &heightMM);

        FUNC5("%08x at %0.3f: Monitor %s (%ix%i at %ix%i, %ix%i mm) was connected\n",
               counter++,
               FUNC3(),
               FUNC0(monitor),
               mode->width, mode->height,
               x, y,
               widthMM, heightMM);
    }
    else if (event == GLFW_DISCONNECTED)
    {
        FUNC5("%08x at %0.3f: Monitor %s was disconnected\n",
               counter++,
               FUNC3(),
               FUNC0(monitor));
    }
}