
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int target; } ;
struct TYPE_10__ {int type; TYPE_1__ xselection; } ;
typedef TYPE_3__ XEvent ;
struct TYPE_9__ {int SAVE_TARGETS; int display; int helperWindowHandle; int CLIPBOARD_MANAGER; } ;
struct TYPE_11__ {TYPE_2__ x11; } ;


 int CurrentTime ;
 int None ;



 scalar_t__ XCheckIfEvent (int ,TYPE_3__*,int ,int *) ;
 int XConvertSelection (int ,int ,int ,int ,int ,int ) ;
 TYPE_6__ _glfw ;
 int handleSelectionClear (TYPE_3__*) ;
 int handleSelectionRequest (TYPE_3__*) ;
 int isSelectionEvent ;
 int waitForEvent (int *) ;

void _glfwPushSelectionToManagerX11(void)
{
    XConvertSelection(_glfw.x11.display,
                      _glfw.x11.CLIPBOARD_MANAGER,
                      _glfw.x11.SAVE_TARGETS,
                      None,
                      _glfw.x11.helperWindowHandle,
                      CurrentTime);

    for (;;)
    {
        XEvent event;

        while (XCheckIfEvent(_glfw.x11.display, &event, isSelectionEvent, ((void*)0)))
        {
            switch (event.type)
            {
                case 128:
                    handleSelectionRequest(&event);
                    break;

                case 130:
                    handleSelectionClear(&event);
                    break;

                case 129:
                {
                    if (event.xselection.target == _glfw.x11.SAVE_TARGETS)
                    {





                        return;
                    }

                    break;
                }
            }
        }

        waitForEvent(((void*)0));
    }
}
