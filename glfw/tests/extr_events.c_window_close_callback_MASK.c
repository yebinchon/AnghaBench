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
struct TYPE_3__ {int number; int /*<<< orphan*/  closeable; } ;
typedef  TYPE_1__ Slot ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_KEY_C ; 
 int /*<<< orphan*/  counter ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 

__attribute__((used)) static void FUNC5(GLFWwindow* window)
{
    Slot* slot = FUNC2(window);
    FUNC4("%08x to %i at %0.3f: Window close\n",
           counter++, slot->number, FUNC1());

    if (!slot->closeable)
    {
        FUNC4("(( closing is disabled, press %s to re-enable )\n",
               FUNC0(GLFW_KEY_C, 0));
    }

    FUNC3(window, slot->closeable);
}