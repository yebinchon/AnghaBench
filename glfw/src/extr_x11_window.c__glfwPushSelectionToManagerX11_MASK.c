#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  target; } ;
struct TYPE_10__ {int type; TYPE_1__ xselection; } ;
typedef  TYPE_3__ XEvent ;
struct TYPE_9__ {int /*<<< orphan*/  SAVE_TARGETS; int /*<<< orphan*/  display; int /*<<< orphan*/  helperWindowHandle; int /*<<< orphan*/  CLIPBOARD_MANAGER; } ;
struct TYPE_11__ {TYPE_2__ x11; } ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  None ; 
#define  SelectionClear 130 
#define  SelectionNotify 129 
#define  SelectionRequest 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__ _glfw ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  isSelectionEvent ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
    FUNC1(_glfw.x11.display,
                      _glfw.x11.CLIPBOARD_MANAGER,
                      _glfw.x11.SAVE_TARGETS,
                      None,
                      _glfw.x11.helperWindowHandle,
                      CurrentTime);

    for (;;)
    {
        XEvent event;

        while (FUNC0(_glfw.x11.display, &event, isSelectionEvent, NULL))
        {
            switch (event.type)
            {
                case SelectionRequest:
                    FUNC3(&event);
                    break;

                case SelectionClear:
                    FUNC2(&event);
                    break;

                case SelectionNotify:
                {
                    if (event.xselection.target == _glfw.x11.SAVE_TARGETS)
                    {
                        // This means one of two things; either the selection
                        // was not owned, which means there is no clipboard
                        // manager, or the transfer to the clipboard manager has
                        // completed
                        // In either case, it means we are done here
                        return;
                    }

                    break;
                }
            }
        }

        FUNC4(NULL);
    }
}