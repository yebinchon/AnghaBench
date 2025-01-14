
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ focus; } ;
struct TYPE_10__ {TYPE_5__* currentCursor; TYPE_1__ decorations; } ;
struct TYPE_12__ {TYPE_2__ wl; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_14__ {int currentImage; TYPE_3__* cursor; } ;
struct TYPE_13__ {TYPE_7__ wl; } ;
typedef TYPE_5__ _GLFWcursor ;
struct TYPE_11__ {int image_count; } ;


 scalar_t__ mainWindow ;
 int setCursorImage (TYPE_4__*,TYPE_7__*) ;

__attribute__((used)) static void incrementCursorImage(_GLFWwindow* window)
{
    _GLFWcursor* cursor;

    if (!window || window->wl.decorations.focus != mainWindow)
        return;

    cursor = window->wl.currentCursor;
    if (cursor && cursor->wl.cursor)
    {
        cursor->wl.currentImage += 1;
        cursor->wl.currentImage %= cursor->wl.cursor->image_count;
        setCursorImage(window, &cursor->wl);
    }
}
