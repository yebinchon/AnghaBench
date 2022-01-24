#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int member_2; int member_3; int right; int left; int bottom; int top; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void FUNC3(DWORD style, DWORD exStyle,
                              int contentWidth, int contentHeight,
                              int* fullWidth, int* fullHeight,
                              UINT dpi)
{
    RECT rect = { 0, 0, contentWidth, contentHeight };

    if (FUNC2())
        FUNC1(&rect, style, FALSE, exStyle, dpi);
    else
        FUNC0(&rect, style, FALSE, exStyle);

    *fullWidth = rect.right - rect.left;
    *fullHeight = rect.bottom - rect.top;
}