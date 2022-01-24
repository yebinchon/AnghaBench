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

/* Variables and functions */
 int GLFW_MOD_ALT ; 
 int GLFW_MOD_CAPS_LOCK ; 
 int GLFW_MOD_CONTROL ; 
 int GLFW_MOD_NUM_LOCK ; 
 int GLFW_MOD_SHIFT ; 
 int GLFW_MOD_SUPER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VK_CAPITAL ; 
 int /*<<< orphan*/  VK_CONTROL ; 
 int /*<<< orphan*/  VK_LWIN ; 
 int /*<<< orphan*/  VK_MENU ; 
 int /*<<< orphan*/  VK_NUMLOCK ; 
 int /*<<< orphan*/  VK_RWIN ; 
 int /*<<< orphan*/  VK_SHIFT ; 

__attribute__((used)) static int FUNC1(void)
{
    int mods = 0;

    if (FUNC0(VK_SHIFT) & 0x8000)
        mods |= GLFW_MOD_SHIFT;
    if (FUNC0(VK_CONTROL) & 0x8000)
        mods |= GLFW_MOD_CONTROL;
    if (FUNC0(VK_MENU) & 0x8000)
        mods |= GLFW_MOD_ALT;
    if ((FUNC0(VK_LWIN) | FUNC0(VK_RWIN)) & 0x8000)
        mods |= GLFW_MOD_SUPER;
    if (FUNC0(VK_CAPITAL) & 1)
        mods |= GLFW_MOD_CAPS_LOCK;
    if (FUNC0(VK_NUMLOCK) & 1)
        mods |= GLFW_MOD_NUM_LOCK;

    return mods;
}