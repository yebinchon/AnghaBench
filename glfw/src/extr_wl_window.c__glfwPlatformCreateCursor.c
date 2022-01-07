
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int xhot; int yhot; int height; int width; int buffer; } ;
struct TYPE_8__ {TYPE_1__ wl; } ;
typedef TYPE_2__ _GLFWcursor ;
struct TYPE_9__ {int height; int width; } ;
typedef TYPE_3__ GLFWimage ;


 int GLFW_FALSE ;
 int GLFW_TRUE ;
 int createShmBuffer (TYPE_3__ const*) ;

int _glfwPlatformCreateCursor(_GLFWcursor* cursor,
                              const GLFWimage* image,
                              int xhot, int yhot)
{
    cursor->wl.buffer = createShmBuffer(image);
    if (!cursor->wl.buffer)
        return GLFW_FALSE;

    cursor->wl.width = image->width;
    cursor->wl.height = image->height;
    cursor->wl.xhot = xhot;
    cursor->wl.yhot = yhot;
    return GLFW_TRUE;
}
