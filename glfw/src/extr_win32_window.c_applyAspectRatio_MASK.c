#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  handle; } ;
struct TYPE_9__ {TYPE_1__ win32; scalar_t__ denom; scalar_t__ numer; } ;
typedef  TYPE_2__ _GLFWwindow ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_10__ {int bottom; int top; int right; int left; } ;
typedef  TYPE_3__ RECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USER_DEFAULT_SCREEN_DPI ; 
 int WMSZ_BOTTOM ; 
 int WMSZ_BOTTOMLEFT ; 
 int WMSZ_BOTTOMRIGHT ; 
 int WMSZ_LEFT ; 
 int WMSZ_RIGHT ; 
 int WMSZ_TOP ; 
 int WMSZ_TOPLEFT ; 
 int WMSZ_TOPRIGHT ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(_GLFWwindow* window, int edge, RECT* area)
{
    int xoff, yoff;
    UINT dpi = USER_DEFAULT_SCREEN_DPI;
    const float ratio = (float) window->numer / (float) window->denom;

    if (FUNC1())
        dpi = FUNC0(window->win32.handle);

    FUNC2(FUNC4(window), FUNC3(window),
                      0, 0, &xoff, &yoff, dpi);

    if (edge == WMSZ_LEFT  || edge == WMSZ_BOTTOMLEFT ||
        edge == WMSZ_RIGHT || edge == WMSZ_BOTTOMRIGHT)
    {
        area->bottom = area->top + yoff +
            (int) ((area->right - area->left - xoff) / ratio);
    }
    else if (edge == WMSZ_TOPLEFT || edge == WMSZ_TOPRIGHT)
    {
        area->top = area->bottom - yoff -
            (int) ((area->right - area->left - xoff) / ratio);
    }
    else if (edge == WMSZ_TOP || edge == WMSZ_BOTTOM)
    {
        area->right = area->left + xoff +
            (int) ((area->bottom - area->top - yoff) * ratio);
    }
}