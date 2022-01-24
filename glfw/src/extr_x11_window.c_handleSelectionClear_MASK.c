#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ selection; } ;
struct TYPE_8__ {TYPE_1__ xselectionclear; } ;
typedef  TYPE_3__ XEvent ;
struct TYPE_7__ {scalar_t__ PRIMARY; int /*<<< orphan*/ * clipboardString; int /*<<< orphan*/ * primarySelectionString; } ;
struct TYPE_9__ {TYPE_2__ x11; } ;

/* Variables and functions */
 TYPE_5__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(XEvent* event)
{
    if (event->xselectionclear.selection == _glfw.x11.PRIMARY)
    {
        FUNC0(_glfw.x11.primarySelectionString);
        _glfw.x11.primarySelectionString = NULL;
    }
    else
    {
        FUNC0(_glfw.x11.clipboardString);
        _glfw.x11.clipboardString = NULL;
    }
}