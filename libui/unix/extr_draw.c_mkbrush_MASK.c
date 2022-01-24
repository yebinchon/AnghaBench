#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int Type; size_t NumStops; TYPE_1__* Stops; int /*<<< orphan*/  OuterRadius; int /*<<< orphan*/  Y1; int /*<<< orphan*/  X1; int /*<<< orphan*/  Y0; int /*<<< orphan*/  X0; int /*<<< orphan*/  A; int /*<<< orphan*/  B; int /*<<< orphan*/  G; int /*<<< orphan*/  R; } ;
typedef  TYPE_2__ uiDrawBrush ;
typedef  int /*<<< orphan*/  cairo_pattern_t ;
struct TYPE_4__ {int /*<<< orphan*/  A; int /*<<< orphan*/  B; int /*<<< orphan*/  G; int /*<<< orphan*/  R; int /*<<< orphan*/  Pos; } ;

/* Variables and functions */
 scalar_t__ CAIRO_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
#define  uiDrawBrushTypeLinearGradient 130 
#define  uiDrawBrushTypeRadialGradient 129 
#define  uiDrawBrushTypeSolid 128 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static cairo_pattern_t *FUNC7(uiDrawBrush *b)
{
	cairo_pattern_t *pat;
	size_t i;

	switch (b->Type) {
	case uiDrawBrushTypeSolid:
		pat = FUNC3(b->R, b->G, b->B, b->A);
		break;
	case uiDrawBrushTypeLinearGradient:
		pat = FUNC1(b->X0, b->Y0, b->X1, b->Y1);
		break;
	case uiDrawBrushTypeRadialGradient:
		// make the start circle radius 0 to make it a point
		pat = FUNC2(
			b->X0, b->Y0, 0,
			b->X1, b->Y1, b->OuterRadius);
		break;
//	case uiDrawBrushTypeImage:
	}
	if (FUNC4(pat) != CAIRO_STATUS_SUCCESS)
		FUNC6("error creating pattern in mkbrush(): %s",
			FUNC5(FUNC4(pat)));
	switch (b->Type) {
	case uiDrawBrushTypeLinearGradient:
	case uiDrawBrushTypeRadialGradient:
		for (i = 0; i < b->NumStops; i++)
			FUNC0(pat,
				b->Stops[i].Pos,
				b->Stops[i].R,
				b->Stops[i].G,
				b->Stops[i].B,
				b->Stops[i].A);
	}
	return pat;
}