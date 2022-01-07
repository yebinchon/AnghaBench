
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ height; scalar_t__ width; scalar_t__ buffer; int * handle; } ;
struct TYPE_6__ {TYPE_1__ osmesa; } ;
struct TYPE_7__ {TYPE_2__ context; } ;
typedef TYPE_3__ _GLFWwindow ;


 int OSMesaDestroyContext (int *) ;
 int free (scalar_t__) ;

__attribute__((used)) static void destroyContextOSMesa(_GLFWwindow* window)
{
    if (window->context.osmesa.handle)
    {
        OSMesaDestroyContext(window->context.osmesa.handle);
        window->context.osmesa.handle = ((void*)0);
    }

    if (window->context.osmesa.buffer)
    {
        free(window->context.osmesa.buffer);
        window->context.osmesa.width = 0;
        window->context.osmesa.height = 0;
    }
}
