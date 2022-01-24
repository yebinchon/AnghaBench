#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int X; int Y; double Width; double Height; scalar_t__ Descent; scalar_t__ BaselineY; scalar_t__ Ascent; } ;
typedef  TYPE_1__ uiDrawTextLayoutLineMetrics ;
typedef  int /*<<< orphan*/  uiDrawTextLayout ;
typedef  int /*<<< orphan*/  uiDrawPath ;
struct TYPE_13__ {double R; double G; double B; double A; int /*<<< orphan*/  Type; } ;
typedef  TYPE_2__ uiDrawBrush ;
struct TYPE_14__ {int AreaWidth; int AreaHeight; int /*<<< orphan*/  Context; } ;
typedef  TYPE_3__ uiAreaDrawParams ;
struct TYPE_15__ {int Width; } ;

/* Variables and functions */
 TYPE_2__* fillBrushes ; 
 int margins ; 
 TYPE_6__ params ; 
 int /*<<< orphan*/  showExtents ; 
 int /*<<< orphan*/  showLineBounds ; 
 int /*<<< orphan*/  showLineGuides ; 
 TYPE_2__* strokeBrushes ; 
 int /*<<< orphan*/  strokeParams ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiDrawBrushTypeSolid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,double,double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,double*,double*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(uiAreaDrawParams *p)
{
	uiDrawPath *path;
	uiDrawTextLayout *layout;
	uiDrawBrush b;

	b.Type = uiDrawBrushTypeSolid;

	// only clip the text, not the guides
	FUNC12(p->Context);

	path = FUNC5(uiDrawFillModeWinding);
	FUNC7(path, margins, margins,
		p->AreaWidth - 2 * margins,
		p->AreaHeight - 2 * margins);
	FUNC8(path);
	FUNC1(p->Context, path);
	FUNC3(path);

	// TODO get rid of this later
#if 0
	path = uiDrawNewPath(uiDrawFillModeWinding);
	uiDrawPathAddRectangle(path, -100, -100,
		p->AreaWidth * 2,
		p->AreaHeight * 2);
	uiDrawPathEnd(path);
	b.R = 0.0;
	b.G = 1.0;
	b.B = 0.0;
	b.A = 1.0;
	uiDrawFill(p->Context, path, &b);
	uiDrawFreePath(path);
#endif

	params.Width = p->AreaWidth - 2 * margins;
	layout = FUNC6(&params);
	FUNC14(p->Context, layout, margins, margins);

	FUNC11(p->Context);

	if (FUNC0(showExtents)) {
		double width, height;

		FUNC15(layout, &width, &height);
		path = FUNC5(uiDrawFillModeWinding);
		FUNC7(path, margins, margins,
			width, height);
		FUNC8(path);
		b.R = 1.0;
		b.G = 0.0;
		b.B = 1.0;
		b.A = 0.5;
		FUNC13(p->Context, path, &b, &strokeParams);
		FUNC3(path);
	}

	if (FUNC0(showLineBounds) || FUNC0(showLineGuides)) {
		uiDrawTextLayoutLineMetrics m;
		int i, n;
		int fill = 0;

		n = FUNC17(layout);
		for (i = 0; i < n; i++) {
			FUNC16(layout, i, &m);

			if (FUNC0(showLineBounds)) {
				path = FUNC5(uiDrawFillModeWinding);
				FUNC7(path, margins + m.X, margins + m.Y,
					m.Width, m.Height);
				FUNC8(path);
				FUNC2(p->Context, path, fillBrushes + fill);
				FUNC3(path);
				fill = (fill + 1) % 4;
			}
			if (FUNC0(showLineGuides)) {
				// baseline
				path = FUNC5(uiDrawFillModeWinding);
				FUNC10(path,
					margins + m.X,
					margins + m.BaselineY);
				FUNC9(path,
					margins + m.X + m.Width,
					margins + m.BaselineY);
				FUNC8(path);
				FUNC13(p->Context, path, &(strokeBrushes[0]), &strokeParams);
				FUNC3(path);

				// ascent line
				path = FUNC5(uiDrawFillModeWinding);
				FUNC10(path,
					margins + m.X,
					margins + m.BaselineY - m.Ascent);
				FUNC9(path,
					margins + m.X + m.Width,
					margins + m.BaselineY - m.Ascent);
				FUNC8(path);
				FUNC13(p->Context, path, &(strokeBrushes[1]), &strokeParams);
				FUNC3(path);

				// descent line
				path = FUNC5(uiDrawFillModeWinding);
				FUNC10(path,
					margins + m.X,
					margins + m.BaselineY + m.Descent);
				FUNC9(path,
					margins + m.X + m.Width,
					margins + m.BaselineY + m.Descent);
				FUNC8(path);
				FUNC13(p->Context, path, &(strokeBrushes[2]), &strokeParams);
				FUNC3(path);
			}
		}
	}

	FUNC4(layout);
}