
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ allocated; scalar_t__ index; } ;
struct TYPE_5__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWtls ;
typedef scalar_t__ GLFWbool ;


 scalar_t__ GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 scalar_t__ GLFW_TRUE ;
 scalar_t__ TLS_OUT_OF_INDEXES ;
 scalar_t__ TlsAlloc () ;
 int _glfwInputErrorWin32 (int ,char*) ;
 int assert (int) ;

GLFWbool _glfwPlatformCreateTls(_GLFWtls* tls)
{
    assert(tls->win32.allocated == GLFW_FALSE);

    tls->win32.index = TlsAlloc();
    if (tls->win32.index == TLS_OUT_OF_INDEXES)
    {
        _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                             "Win32: Failed to allocate TLS index");
        return GLFW_FALSE;
    }

    tls->win32.allocated = GLFW_TRUE;
    return GLFW_TRUE;
}
