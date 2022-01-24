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
typedef  int /*<<< orphan*/  uiFontDescriptor ;
struct TYPE_3__ {int /*<<< orphan*/  fc; } ;
typedef  TYPE_1__ uiFontButton ;
typedef  int /*<<< orphan*/  PangoFontDescription ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(uiFontButton *b, uiFontDescriptor *desc)
{
	PangoFontDescription *pdesc;

	pdesc = FUNC0(b->fc);
	FUNC2(pdesc, desc);
	// pdesc is transfer-full and thus is a copy
	FUNC1(pdesc);
}