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
struct TYPE_3__ {int number; int closeable; } ;
typedef  TYPE_1__ Slot ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
#define  GLFW_KEY_C 129 
#define  GLFW_KEY_L 128 
 int /*<<< orphan*/  GLFW_LOCK_KEY_MODS ; 
 int GLFW_PRESS ; 
 int /*<<< orphan*/  counter ; 
 char* FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int,int) ; 
 double FUNC5 () ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 

__attribute__((used)) static void FUNC9(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    Slot* slot = FUNC6(window);
    const char* name = FUNC4(key, scancode);

    if (name)
    {
        FUNC8("%08x to %i at %0.3f: Key 0x%04x Scancode 0x%04x (%s) (%s) (with%s) was %s\n",
               counter++, slot->number, FUNC5(), key, scancode,
               FUNC1(key),
               name,
               FUNC2(mods),
               FUNC0(action));
    }
    else
    {
        FUNC8("%08x to %i at %0.3f: Key 0x%04x Scancode 0x%04x (%s) (with%s) was %s\n",
               counter++, slot->number, FUNC5(), key, scancode,
               FUNC1(key),
               FUNC2(mods),
               FUNC0(action));
    }

    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case GLFW_KEY_C:
        {
            slot->closeable = !slot->closeable;

            FUNC8("(( closing %s ))\n", slot->closeable ? "enabled" : "disabled");
            break;
        }

        case GLFW_KEY_L:
        {
            const int state = FUNC3(window, GLFW_LOCK_KEY_MODS);
            FUNC7(window, GLFW_LOCK_KEY_MODS, !state);

            FUNC8("(( lock key mods %s ))\n", !state ? "enabled" : "disabled");
            break;
        }
    }
}