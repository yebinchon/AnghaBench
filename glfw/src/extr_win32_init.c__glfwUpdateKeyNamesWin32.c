
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int chars ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_3__ {int* scancodes; int * keynames; } ;
struct TYPE_4__ {TYPE_1__ win32; } ;
typedef int BYTE ;


 int CP_UTF8 ;
 int GLFW_KEY_KP_0 ;
 int GLFW_KEY_KP_ADD ;
 int GLFW_KEY_LAST ;
 int GLFW_KEY_SPACE ;
 int MAPVK_VSC_TO_VK ;
 int MapVirtualKey (int,int ) ;
 int ToUnicode (int ,int,int *,int *,int,int ) ;
 int const VK_ADD ;
 int const VK_DECIMAL ;
 int const VK_DIVIDE ;
 int const VK_MULTIPLY ;
 int const VK_NUMPAD0 ;
 int const VK_NUMPAD1 ;
 int const VK_NUMPAD2 ;
 int const VK_NUMPAD3 ;
 int const VK_NUMPAD4 ;
 int const VK_NUMPAD5 ;
 int const VK_NUMPAD6 ;
 int const VK_NUMPAD7 ;
 int const VK_NUMPAD8 ;
 int const VK_NUMPAD9 ;
 int const VK_SUBTRACT ;
 int WideCharToMultiByte (int ,int ,int *,int,int ,int,int *,int *) ;
 TYPE_2__ _glfw ;
 int memset (int *,int ,int) ;

void _glfwUpdateKeyNamesWin32(void)
{
    int key;
    BYTE state[256] = {0};

    memset(_glfw.win32.keynames, 0, sizeof(_glfw.win32.keynames));

    for (key = GLFW_KEY_SPACE; key <= GLFW_KEY_LAST; key++)
    {
        UINT vk;
        int scancode, length;
        WCHAR chars[16];

        scancode = _glfw.win32.scancodes[key];
        if (scancode == -1)
            continue;

        if (key >= GLFW_KEY_KP_0 && key <= GLFW_KEY_KP_ADD)
        {
            const UINT vks[] = {
                VK_NUMPAD0, VK_NUMPAD1, VK_NUMPAD2, VK_NUMPAD3,
                VK_NUMPAD4, VK_NUMPAD5, VK_NUMPAD6, VK_NUMPAD7,
                VK_NUMPAD8, VK_NUMPAD9, VK_DECIMAL, VK_DIVIDE,
                VK_MULTIPLY, VK_SUBTRACT, VK_ADD
            };

            vk = vks[key - GLFW_KEY_KP_0];
        }
        else
            vk = MapVirtualKey(scancode, MAPVK_VSC_TO_VK);

        length = ToUnicode(vk, scancode, state,
                           chars, sizeof(chars) / sizeof(WCHAR),
                           0);

        if (length == -1)
        {
            length = ToUnicode(vk, scancode, state,
                               chars, sizeof(chars) / sizeof(WCHAR),
                               0);
        }

        if (length < 1)
            continue;

        WideCharToMultiByte(CP_UTF8, 0, chars, 1,
                            _glfw.win32.keynames[key],
                            sizeof(_glfw.win32.keynames[key]),
                            ((void*)0), ((void*)0));
    }
}
