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
typedef  int /*<<< orphan*/  uiDrawTextLayout ;
struct TYPE_5__ {int Down; scalar_t__ Y; scalar_t__ X; scalar_t__ AreaWidth; } ;
typedef  TYPE_1__ uiAreaMouseEvent ;
struct TYPE_6__ {scalar_t__ Width; } ;

/* Variables and functions */
 int /*<<< orphan*/  caretLabel ; 
 int caretLine ; 
 scalar_t__ caretPos ; 
 int margins ; 
 TYPE_2__ params ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(uiAreaMouseEvent *e)
{
	uiDrawTextLayout *layout;
	char labelText[128];

	if (e->Down != 1)
		return;

	params.Width = e->AreaWidth - 2 * margins;
	layout = FUNC3(&params);
	FUNC4(layout,
		e->X - margins, e->Y - margins,
		&caretPos, &caretLine);
	FUNC2(layout);

	// TODO move this into the draw handler so it is reflected by keyboard-based position changes
	// urgh %zd is not supported by MSVC with sprintf()
	// TODO get that part in test/ about having no other option
	FUNC1(labelText, "pos %d line %d",
		(int) caretPos, caretLine);
	FUNC5(caretLabel, labelText);

	FUNC0();
}