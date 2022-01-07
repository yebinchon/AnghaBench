
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int handle; scalar_t__ allocated; } ;
struct TYPE_6__ {TYPE_1__ posix; } ;
typedef TYPE_2__ _GLFWmutex ;


 int memset (TYPE_2__*,int ,int) ;
 int pthread_mutex_destroy (int *) ;

void _glfwPlatformDestroyMutex(_GLFWmutex* mutex)
{
    if (mutex->posix.allocated)
        pthread_mutex_destroy(&mutex->posix.handle);
    memset(mutex, 0, sizeof(_GLFWmutex));
}
