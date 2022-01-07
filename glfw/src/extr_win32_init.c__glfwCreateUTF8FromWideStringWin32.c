
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_UTF8 ;
 int GLFW_PLATFORM_ERROR ;
 int WideCharToMultiByte (int ,int ,int const*,int,char*,int,int *,int *) ;
 int _glfwInputErrorWin32 (int ,char*) ;
 char* calloc (int,int) ;
 int free (char*) ;

char* _glfwCreateUTF8FromWideStringWin32(const WCHAR* source)
{
    char* target;
    int size;

    size = WideCharToMultiByte(CP_UTF8, 0, source, -1, ((void*)0), 0, ((void*)0), ((void*)0));
    if (!size)
    {
        _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to convert string to UTF-8");
        return ((void*)0);
    }

    target = calloc(size, 1);

    if (!WideCharToMultiByte(CP_UTF8, 0, source, -1, target, size, ((void*)0), ((void*)0)))
    {
        _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to convert string to UTF-8");
        free(target);
        return ((void*)0);
    }

    return target;
}
