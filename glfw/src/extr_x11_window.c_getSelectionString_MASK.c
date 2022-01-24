#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  targets ;
typedef  int /*<<< orphan*/  XPointer ;
struct TYPE_8__ {scalar_t__ property; int /*<<< orphan*/  requestor; } ;
struct TYPE_9__ {TYPE_2__ xselection; } ;
typedef  TYPE_3__ XEvent ;
struct TYPE_7__ {scalar_t__ const UTF8_STRING; scalar_t__ PRIMARY; char* primarySelectionString; char* clipboardString; scalar_t__ helperWindowHandle; scalar_t__ INCR; int /*<<< orphan*/  display; int /*<<< orphan*/  GLFW_SELECTION; } ;
struct TYPE_10__ {TYPE_1__ x11; } ;
typedef  scalar_t__ Atom ;

/* Variables and functions */
 int /*<<< orphan*/  AnyPropertyType ; 
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  GLFW_FORMAT_UNAVAILABLE ; 
 int /*<<< orphan*/  LONG_MAX ; 
 scalar_t__ None ; 
 int /*<<< orphan*/  SelectionNotify ; 
 int /*<<< orphan*/  True ; 
 scalar_t__ const XA_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__ const,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int*,unsigned long*,unsigned long*,unsigned char**) ; 
 TYPE_4__ _glfw ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  isSelPropNewValueNotify ; 
 char* FUNC10 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char* FUNC13(Atom selection)
{
    char** selectionString = NULL;
    const Atom targets[] = { _glfw.x11.UTF8_STRING, XA_STRING };
    const size_t targetCount = sizeof(targets) / sizeof(targets[0]);

    if (selection == _glfw.x11.PRIMARY)
        selectionString = &_glfw.x11.primarySelectionString;
    else
        selectionString = &_glfw.x11.clipboardString;

    if (FUNC4(_glfw.x11.display, selection) ==
        _glfw.x11.helperWindowHandle)
    {
        // Instead of doing a large number of X round-trips just to put this
        // string into a window property and then read it back, just return it
        return *selectionString;
    }

    FUNC9(*selectionString);
    *selectionString = NULL;

    for (size_t i = 0;  i < targetCount;  i++)
    {
        char* data;
        Atom actualType;
        int actualFormat;
        unsigned long itemCount, bytesAfter;
        XEvent notification, dummy;

        FUNC2(_glfw.x11.display,
                          selection,
                          targets[i],
                          _glfw.x11.GLFW_SELECTION,
                          _glfw.x11.helperWindowHandle,
                          CurrentTime);

        while (!FUNC1(_glfw.x11.display,
                                       _glfw.x11.helperWindowHandle,
                                       SelectionNotify,
                                       &notification))
        {
            FUNC12(NULL);
        }

        if (notification.xselection.property == None)
            continue;

        FUNC0(_glfw.x11.display,
                      &dummy,
                      isSelPropNewValueNotify,
                      (XPointer) &notification);

        FUNC5(_glfw.x11.display,
                           notification.xselection.requestor,
                           notification.xselection.property,
                           0,
                           LONG_MAX,
                           True,
                           AnyPropertyType,
                           &actualType,
                           &actualFormat,
                           &itemCount,
                           &bytesAfter,
                           (unsigned char**) &data);

        if (actualType == _glfw.x11.INCR)
        {
            size_t size = 1;
            char* string = NULL;

            for (;;)
            {
                while (!FUNC0(_glfw.x11.display,
                                      &dummy,
                                      isSelPropNewValueNotify,
                                      (XPointer) &notification))
                {
                    FUNC12(NULL);
                }

                FUNC3(data);
                FUNC5(_glfw.x11.display,
                                   notification.xselection.requestor,
                                   notification.xselection.property,
                                   0,
                                   LONG_MAX,
                                   True,
                                   AnyPropertyType,
                                   &actualType,
                                   &actualFormat,
                                   &itemCount,
                                   &bytesAfter,
                                   (unsigned char**) &data);

                if (itemCount)
                {
                    size += itemCount;
                    string = FUNC10(string, size);
                    string[size - itemCount - 1] = '\0';
                    FUNC11(string, data);
                }

                if (!itemCount)
                {
                    if (targets[i] == XA_STRING)
                    {
                        *selectionString = FUNC8(string);
                        FUNC9(string);
                    }
                    else
                        *selectionString = string;

                    break;
                }
            }
        }
        else if (actualType == targets[i])
        {
            if (targets[i] == XA_STRING)
                *selectionString = FUNC8(data);
            else
                *selectionString = FUNC7(data);
        }

        FUNC3(data);

        if (*selectionString)
            break;
    }

    if (!*selectionString)
    {
        FUNC6(GLFW_FORMAT_UNAVAILABLE,
                        "X11: Failed to convert selection to string");
    }

    return *selectionString;
}