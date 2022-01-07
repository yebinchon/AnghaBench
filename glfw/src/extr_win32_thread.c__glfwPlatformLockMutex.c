
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ allocated; int section; } ;
struct TYPE_5__ {TYPE_1__ win32; } ;
typedef TYPE_2__ _GLFWmutex ;


 int EnterCriticalSection (int *) ;
 scalar_t__ GLFW_TRUE ;
 int assert (int) ;

void _glfwPlatformLockMutex(_GLFWmutex* mutex)
{
    assert(mutex->win32.allocated == GLFW_TRUE);
    EnterCriticalSection(&mutex->win32.section);
}
