
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ allocated; int key; } ;
struct TYPE_5__ {TYPE_1__ posix; } ;
typedef TYPE_2__ _GLFWtls ;


 scalar_t__ GLFW_TRUE ;
 int assert (int) ;
 int pthread_setspecific (int ,void*) ;

void _glfwPlatformSetTls(_GLFWtls* tls, void* value)
{
    assert(tls->posix.allocated == GLFW_TRUE);
    pthread_setspecific(tls->posix.key, value);
}
