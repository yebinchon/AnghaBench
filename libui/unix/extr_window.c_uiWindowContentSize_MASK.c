#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  childHolderWidget; } ;
typedef  TYPE_1__ uiWindow ;
struct TYPE_6__ {int width; int height; } ;
typedef  TYPE_2__ GtkAllocation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC1(uiWindow *w, int *width, int *height)
{
	GtkAllocation allocation;

	FUNC0(w->childHolderWidget, &allocation);
	*width = allocation.width;
	*height = allocation.height;
}