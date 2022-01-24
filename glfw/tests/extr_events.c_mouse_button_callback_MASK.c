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
struct TYPE_3__ {int number; } ;
typedef  TYPE_1__ Slot ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  counter ; 
 char* FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 double FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,double,int,char*,char*,char*) ; 

__attribute__((used)) static void FUNC6(GLFWwindow* window, int button, int action, int mods)
{
    Slot* slot = FUNC4(window);
    FUNC5("%08x to %i at %0.3f: Mouse button %i (%s) (with%s) was %s\n",
           counter++, slot->number, FUNC3(), button,
           FUNC1(button),
           FUNC2(mods),
           FUNC0(action));
}