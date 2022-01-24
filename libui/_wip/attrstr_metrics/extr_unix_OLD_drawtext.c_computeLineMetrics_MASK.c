#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ ParagraphSpacing; scalar_t__ LineSpacing; scalar_t__ LineHeightSpace; scalar_t__ ParagraphSpacingBefore; scalar_t__ Leading; void* Descent; void* Ascent; void* BaselineY; void* Height; void* Width; void* Y; void* X; } ;
typedef  TYPE_1__ uiDrawTextLayoutLineMetrics ;
struct TYPE_13__ {int nLines; int /*<<< orphan*/  layout; TYPE_1__* lineMetrics; } ;
typedef  TYPE_2__ uiDrawTextLayout ;
struct TYPE_15__ {int /*<<< orphan*/  start_index; } ;
struct TYPE_14__ {int x; int width; int height; } ;
typedef  TYPE_3__ PangoRectangle ;
typedef  TYPE_4__ PangoLayoutLine ;
typedef  int /*<<< orphan*/  PangoLayoutIter ;

/* Variables and functions */
 int FUNC0 (TYPE_3__) ; 
 int FUNC1 (TYPE_3__) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC10 (int,char*) ; 

__attribute__((used)) static void FUNC11(uiDrawTextLayout *tl)
{
	PangoLayoutIter *iter;
	PangoLayoutLine *pll;
	PangoRectangle lineStartPos, lineExtents;
	int i, n;
	uiDrawTextLayoutLineMetrics *m;

	n = tl->nLines;		// TODO remove this variable
	tl->lineMetrics = (uiDrawTextLayoutLineMetrics *) FUNC10(n * sizeof (uiDrawTextLayoutLineMetrics), "uiDrawTextLayoutLineMetrics[] (text layout)");
	iter = FUNC3(tl->layout);

	m = tl->lineMetrics;
	for (i = 0; i < n; i++) {
		int baselineY;

		// TODO we use this instead of _get_yrange() because of the block of text in that function's description about how line spacing is distributed in Pango; we have to worry about this when we start adding line spacing...
		baselineY = FUNC6(iter);
		pll = FUNC7(iter);
		FUNC4(tl->layout, pll->start_index, &lineStartPos);
		FUNC9(pll, NULL, &lineExtents);
		// TODO unref pll?

		// TODO is this correct for RTL glyphs?
		m->X = FUNC2(lineStartPos.x);
		// TODO fix the whole combined not being updated shenanigans in the static build (here because ugh)
		m->Y = FUNC2(baselineY - FUNC0(lineExtents));
		// TODO this does not include the last space if any
		m->Width = FUNC2(lineExtents.width);
		m->Height = FUNC2(lineExtents.height);

		m->BaselineY = FUNC2(baselineY);
		m->Ascent = FUNC2(FUNC0(lineExtents));
		m->Descent = FUNC2(FUNC1(lineExtents));
		m->Leading = 0;		// TODO

		m->ParagraphSpacingBefore = 0;		// TODO
		m->LineHeightSpace = 0;				// TODO
		m->LineSpacing = 0;				// TODO
		m->ParagraphSpacing = 0;			// TODO

		// don't worry about the return value; we're not using this after the last line
		FUNC8(iter);
		m++;
	}

	FUNC5(iter);
}