
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int key; scalar_t__ allocated; } ;
struct TYPE_6__ {TYPE_1__ posix; } ;
typedef TYPE_2__ _GLFWtls ;


 int memset (TYPE_2__*,int ,int) ;
 int pthread_key_delete (int ) ;

void _glfwPlatformDestroyTls(_GLFWtls* tls)
{
    if (tls->posix.allocated)
        pthread_key_delete(tls->posix.key);
    memset(tls, 0, sizeof(_GLFWtls));
}
