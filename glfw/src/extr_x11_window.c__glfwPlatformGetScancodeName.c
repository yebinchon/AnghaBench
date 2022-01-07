
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int group; int available; } ;
struct TYPE_5__ {int* keycodes; char** keynames; TYPE_1__ xkb; int display; } ;
struct TYPE_6__ {TYPE_2__ x11; } ;
typedef scalar_t__ KeySym ;


 scalar_t__ const NoSymbol ;
 scalar_t__ XkbKeycodeToKeysym (int ,int,int ,int ) ;
 TYPE_3__ _glfw ;
 long _glfwKeySym2Unicode (scalar_t__ const) ;
 size_t encodeUTF8 (char*,unsigned int) ;

const char* _glfwPlatformGetScancodeName(int scancode)
{
    if (!_glfw.x11.xkb.available)
        return ((void*)0);

    const int key = _glfw.x11.keycodes[scancode];
    const KeySym keysym = XkbKeycodeToKeysym(_glfw.x11.display,
                                             scancode, _glfw.x11.xkb.group, 0);
    if (keysym == NoSymbol)
        return ((void*)0);

    const long ch = _glfwKeySym2Unicode(keysym);
    if (ch == -1)
        return ((void*)0);

    const size_t count = encodeUTF8(_glfw.x11.keynames[key], (unsigned int) ch);
    if (count == 0)
        return ((void*)0);

    _glfw.x11.keynames[key][count] = '\0';
    return _glfw.x11.keynames[key];
}
