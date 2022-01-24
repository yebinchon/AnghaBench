#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int padded; int /*<<< orphan*/  grid; } ;
typedef  TYPE_1__ uiForm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiprivGTKXPadding ; 
 int /*<<< orphan*/  uiprivGTKYPadding ; 

void FUNC2(uiForm *f, int padded)
{
	f->padded = padded;
	if (f->padded) {
		FUNC1(f->grid, uiprivGTKYPadding);
		FUNC0(f->grid, uiprivGTKXPadding);
	} else {
		FUNC1(f->grid, 0);
		FUNC0(f->grid, 0);
	}
}