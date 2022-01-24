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
struct TYPE_4__ {int x; int width; int y; int height; } ;
typedef  TYPE_1__ Rect ;
typedef  int /*<<< orphan*/  Output ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__) ; 

Output *FUNC2(Rect rect) {
    unsigned int mid_x = rect.x + rect.width / 2;
    unsigned int mid_y = rect.y + rect.height / 2;
    Output *output = FUNC0(mid_x, mid_y);

    return output ? output : FUNC1(rect);
}