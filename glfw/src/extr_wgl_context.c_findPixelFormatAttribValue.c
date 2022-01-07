
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_PLATFORM_ERROR ;
 int _glfwInputErrorWin32 (int ,char*) ;

__attribute__((used)) static int findPixelFormatAttribValue(const int* attribs,
                                      int attribCount,
                                      const int* values,
                                      int attrib)
{
    int i;

    for (i = 0; i < attribCount; i++)
    {
        if (attribs[i] == attrib)
            return values[i];
    }

    _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                         "WGL: Unknown pixel format attribute requested");
    return 0;
}
