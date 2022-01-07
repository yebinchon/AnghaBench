
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef unsigned int XcursorPixel ;
struct TYPE_12__ {int xhot; int yhot; unsigned int* pixels; } ;
typedef TYPE_3__ XcursorImage ;
struct TYPE_10__ {int handle; } ;
struct TYPE_11__ {int display; TYPE_1__ xcursor; } ;
struct TYPE_14__ {TYPE_2__ x11; } ;
struct TYPE_13__ {int width; int height; scalar_t__ pixels; } ;
typedef TYPE_4__ GLFWimage ;
typedef int Cursor ;


 int None ;
 TYPE_3__* XcursorImageCreate (int,int) ;
 int XcursorImageDestroy (TYPE_3__*) ;
 int XcursorImageLoadCursor (int ,TYPE_3__*) ;
 TYPE_6__ _glfw ;

Cursor _glfwCreateCursorX11(const GLFWimage* image, int xhot, int yhot)
{
    int i;
    Cursor cursor;

    if (!_glfw.x11.xcursor.handle)
        return None;

    XcursorImage* native = XcursorImageCreate(image->width, image->height);
    if (native == ((void*)0))
        return None;

    native->xhot = xhot;
    native->yhot = yhot;

    unsigned char* source = (unsigned char*) image->pixels;
    XcursorPixel* target = native->pixels;

    for (i = 0; i < image->width * image->height; i++, target++, source += 4)
    {
        unsigned int alpha = source[3];

        *target = (alpha << 24) |
                  ((unsigned char) ((source[0] * alpha) / 255) << 16) |
                  ((unsigned char) ((source[1] * alpha) / 255) << 8) |
                  ((unsigned char) ((source[2] * alpha) / 255) << 0);
    }

    cursor = XcursorImageLoadCursor(_glfw.x11.display, native);
    XcursorImageDestroy(native);

    return cursor;
}
