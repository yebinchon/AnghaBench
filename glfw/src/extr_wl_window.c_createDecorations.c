
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int buffer; int bottom; int right; int left; int top; scalar_t__ serverSide; } ;
struct TYPE_11__ {int width; int height; TYPE_2__ decorations; int surface; } ;
struct TYPE_12__ {TYPE_3__ wl; int decorated; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_9__ {int viewporter; } ;
struct TYPE_14__ {TYPE_1__ wl; } ;
struct TYPE_13__ {int member_0; int member_1; unsigned char* member_2; } ;
typedef TYPE_5__ GLFWimage ;
typedef int GLFWbool ;


 int _GLFW_DECORATION_HORIZONTAL ;
 int _GLFW_DECORATION_TOP ;
 int _GLFW_DECORATION_WIDTH ;
 TYPE_8__ _glfw ;
 int createDecoration (int *,int ,int ,int,int ,int ,int ,int ) ;
 int createShmBuffer (TYPE_5__ const*) ;

__attribute__((used)) static void createDecorations(_GLFWwindow* window)
{
    unsigned char data[] = { 224, 224, 224, 255 };
    const GLFWimage image = { 1, 1, data };
    GLFWbool opaque = (data[3] == 255);

    if (!_glfw.wl.viewporter || !window->decorated || window->wl.decorations.serverSide)
        return;

    if (!window->wl.decorations.buffer)
        window->wl.decorations.buffer = createShmBuffer(&image);
    if (!window->wl.decorations.buffer)
        return;

    createDecoration(&window->wl.decorations.top, window->wl.surface,
                     window->wl.decorations.buffer, opaque,
                     0, -_GLFW_DECORATION_TOP,
                     window->wl.width, _GLFW_DECORATION_TOP);
    createDecoration(&window->wl.decorations.left, window->wl.surface,
                     window->wl.decorations.buffer, opaque,
                     -_GLFW_DECORATION_WIDTH, -_GLFW_DECORATION_TOP,
                     _GLFW_DECORATION_WIDTH, window->wl.height + _GLFW_DECORATION_TOP);
    createDecoration(&window->wl.decorations.right, window->wl.surface,
                     window->wl.decorations.buffer, opaque,
                     window->wl.width, -_GLFW_DECORATION_TOP,
                     _GLFW_DECORATION_WIDTH, window->wl.height + _GLFW_DECORATION_TOP);
    createDecoration(&window->wl.decorations.bottom, window->wl.surface,
                     window->wl.decorations.buffer, opaque,
                     -_GLFW_DECORATION_WIDTH, window->wl.height,
                     window->wl.width + _GLFW_DECORATION_HORIZONTAL, _GLFW_DECORATION_WIDTH);
}
