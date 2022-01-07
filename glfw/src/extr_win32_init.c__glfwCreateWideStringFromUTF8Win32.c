
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_UTF8 ;
 int GLFW_PLATFORM_ERROR ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int _glfwInputErrorWin32 (int ,char*) ;
 int * calloc (int,int) ;
 int free (int *) ;

WCHAR* _glfwCreateWideStringFromUTF8Win32(const char* source)
{
    WCHAR* target;
    int count;

    count = MultiByteToWideChar(CP_UTF8, 0, source, -1, ((void*)0), 0);
    if (!count)
    {
        _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to convert string from UTF-8");
        return ((void*)0);
    }

    target = calloc(count, sizeof(WCHAR));

    if (!MultiByteToWideChar(CP_UTF8, 0, source, -1, target, count))
    {
        _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to convert string from UTF-8");
        free(target);
        return ((void*)0);
    }

    return target;
}
