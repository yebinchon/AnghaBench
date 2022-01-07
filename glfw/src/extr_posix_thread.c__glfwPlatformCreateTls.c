
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ allocated; int key; } ;
struct TYPE_5__ {TYPE_1__ posix; } ;
typedef TYPE_2__ _GLFWtls ;
typedef scalar_t__ GLFWbool ;


 scalar_t__ GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 scalar_t__ GLFW_TRUE ;
 int _glfwInputError (int ,char*) ;
 int assert (int) ;
 scalar_t__ pthread_key_create (int *,int *) ;

GLFWbool _glfwPlatformCreateTls(_GLFWtls* tls)
{
    assert(tls->posix.allocated == GLFW_FALSE);

    if (pthread_key_create(&tls->posix.key, ((void*)0)) != 0)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "POSIX: Failed to create context TLS");
        return GLFW_FALSE;
    }

    tls->posix.allocated = GLFW_TRUE;
    return GLFW_TRUE;
}
