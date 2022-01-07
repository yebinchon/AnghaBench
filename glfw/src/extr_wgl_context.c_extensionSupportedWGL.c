
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ GetExtensionsStringEXT; scalar_t__ GetExtensionsStringARB; } ;
struct TYPE_4__ {TYPE_1__ wgl; } ;


 int GLFW_FALSE ;
 TYPE_2__ _glfw ;
 int _glfwStringInExtensionString (char const*,char const*) ;
 int wglGetCurrentDC () ;
 char* wglGetExtensionsStringARB (int ) ;
 char* wglGetExtensionsStringEXT () ;

__attribute__((used)) static int extensionSupportedWGL(const char* extension)
{
    const char* extensions = ((void*)0);

    if (_glfw.wgl.GetExtensionsStringARB)
        extensions = wglGetExtensionsStringARB(wglGetCurrentDC());
    else if (_glfw.wgl.GetExtensionsStringEXT)
        extensions = wglGetExtensionsStringEXT();

    if (!extensions)
        return GLFW_FALSE;

    return _glfwStringInExtensionString(extension, extensions);
}
