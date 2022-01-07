
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CLIPBOARD; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 TYPE_2__ _glfw ;
 char const* getSelectionString (int ) ;

const char* _glfwPlatformGetClipboardString(void)
{
    return getSelectionString(_glfw.x11.CLIPBOARD);
}
