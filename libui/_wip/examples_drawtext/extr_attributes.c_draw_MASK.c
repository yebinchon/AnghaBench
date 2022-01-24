#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int X; int Y; scalar_t__ Height; scalar_t__ Width; } ;
typedef  TYPE_1__ uiDrawTextLayoutLineMetrics ;
typedef  int /*<<< orphan*/  uiDrawTextLayout ;
typedef  int /*<<< orphan*/  uiDrawPath ;
struct TYPE_9__ {int /*<<< orphan*/  Type; } ;
typedef  TYPE_2__ uiDrawBrush ;
struct TYPE_10__ {int /*<<< orphan*/  Context; scalar_t__ AreaWidth; scalar_t__ AreaHeight; } ;
typedef  TYPE_3__ uiAreaDrawParams ;
struct TYPE_11__ {scalar_t__ Width; } ;

/* Variables and functions */
 scalar_t__ fillBrushes ; 
 int margins ; 
 TYPE_5__ params ; 
 int /*<<< orphan*/  showLineBounds ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiDrawBrushTypeSolid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(uiAreaDrawParams *p)
{
	uiDrawPath *path;
	uiDrawTextLayout *layout;
	uiDrawBrush b;

	b.Type = uiDrawBrushTypeSolid;

	// only clip the text, not the guides
	FUNC10(p->Context);

	path = FUNC5(uiDrawFillModeWinding);
	FUNC7(path, margins, margins,
		p->AreaWidth - 2 * margins,
		p->AreaHeight - 2 * margins);
	FUNC8(path);
	FUNC1(p->Context, path);
	FUNC3(path);

	params.Width = p->AreaWidth - 2 * margins;
	layout = FUNC6(&params);
	FUNC11(p->Context, layout, margins, margins);

	FUNC9(p->Context);

	if (FUNC0(showLineBounds)) {
		uiDrawTextLayoutLineMetrics m;
		int i, n;
		int fill = 0;

		n = FUNC13(layout);
		for (i = 0; i < n; i++) {
			FUNC12(layout, i, &m);

			path = FUNC5(uiDrawFillModeWinding);
			FUNC7(path, margins + m.X, margins + m.Y,
				m.Width, m.Height);
			FUNC8(path);
			FUNC2(p->Context, path, fillBrushes + fill);
			FUNC3(path);
			fill = (fill + 1) % 4;
		}
	}

	FUNC4(layout);
}