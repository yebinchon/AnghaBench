
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ allocated; int handle; } ;
struct TYPE_5__ {TYPE_1__ posix; } ;
typedef TYPE_2__ _GLFWmutex ;
typedef scalar_t__ GLFWbool ;


 scalar_t__ GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 scalar_t__ GLFW_TRUE ;
 int _glfwInputError (int ,char*) ;
 int assert (int) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;

GLFWbool _glfwPlatformCreateMutex(_GLFWmutex* mutex)
{
    assert(mutex->posix.allocated == GLFW_FALSE);

    if (pthread_mutex_init(&mutex->posix.handle, ((void*)0)) != 0)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR, "POSIX: Failed to create mutex");
        return GLFW_FALSE;
    }

    return mutex->posix.allocated = GLFW_TRUE;
}
