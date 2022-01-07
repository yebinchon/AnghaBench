
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_MOD_ALT ;
 int GLFW_MOD_CAPS_LOCK ;
 int GLFW_MOD_CONTROL ;
 int GLFW_MOD_NUM_LOCK ;
 int GLFW_MOD_SHIFT ;
 int GLFW_MOD_SUPER ;
 int GetAsyncKeyState (int ) ;
 int VK_CAPITAL ;
 int VK_CONTROL ;
 int VK_LWIN ;
 int VK_MENU ;
 int VK_NUMLOCK ;
 int VK_RWIN ;
 int VK_SHIFT ;

__attribute__((used)) static int getAsyncKeyMods(void)
{
    int mods = 0;

    if (GetAsyncKeyState(VK_SHIFT) & 0x8000)
        mods |= GLFW_MOD_SHIFT;
    if (GetAsyncKeyState(VK_CONTROL) & 0x8000)
        mods |= GLFW_MOD_CONTROL;
    if (GetAsyncKeyState(VK_MENU) & 0x8000)
        mods |= GLFW_MOD_ALT;
    if ((GetAsyncKeyState(VK_LWIN) | GetAsyncKeyState(VK_RWIN)) & 0x8000)
        mods |= GLFW_MOD_SUPER;
    if (GetAsyncKeyState(VK_CAPITAL) & 1)
        mods |= GLFW_MOD_CAPS_LOCK;
    if (GetAsyncKeyState(VK_NUMLOCK) & 1)
        mods |= GLFW_MOD_NUM_LOCK;

    return mods;
}
