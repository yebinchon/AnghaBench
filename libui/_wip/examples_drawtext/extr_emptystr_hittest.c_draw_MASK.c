#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int X; int Y; scalar_t__ Height; scalar_t__ Width; } ;
typedef  TYPE_1__ uiDrawTextLayoutLineMetrics ;
typedef  int /*<<< orphan*/  uiDrawTextLayout ;
typedef  int /*<<< orphan*/  uiDrawPath ;
struct TYPE_8__ {int /*<<< orphan*/  Context; scalar_t__ AreaWidth; scalar_t__ AreaHeight; } ;
typedef  TYPE_2__ uiAreaDrawParams ;
struct TYPE_9__ {scalar_t__ Width; } ;

/* Variables and functions */
 int /*<<< orphan*/  attrstr ; 
 int caretLine ; 
 int /*<<< orphan*/  caretPos ; 
 scalar_t__ fillBrushes ; 
 int margins ; 
 TYPE_4__ params ; 
 int /*<<< orphan*/  showLineBounds ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(uiAreaDrawParams *p)
{
	uiDrawPath *path;
	uiDrawTextLayout *layout;
	uiDrawTextLayoutLineMetrics m;

	// only clip the text, not the guides
	FUNC12(p->Context);

	path = FUNC7(uiDrawFillModeWinding);
	FUNC9(path, margins, margins,
		p->AreaWidth - 2 * margins,
		p->AreaHeight - 2 * margins);
	FUNC10(path);
	FUNC3(p->Context, path);
	FUNC5(path);

	params.Width = p->AreaWidth - 2 * margins;
	layout = FUNC8(&params);
	FUNC13(p->Context, layout, margins, margins);

	FUNC11(p->Context);

	if (caretLine == -1) {
		caretLine = FUNC15(layout) - 1;
		caretPos = FUNC0(attrstr);
	}
	FUNC2(p->Context, margins, margins,
		layout, caretPos, &caretLine);

	if (FUNC1(showLineBounds)) {
		int i, n;
		int fill = 0;

		n = FUNC15(layout);
		for (i = 0; i < n; i++) {
			FUNC14(layout, i, &m);
			path = FUNC7(uiDrawFillModeWinding);
			FUNC9(path, margins + m.X, margins + m.Y,
				m.Width, m.Height);
			FUNC10(path);
			FUNC4(p->Context, path, fillBrushes + fill);
			FUNC5(path);
			fill = (fill + 1) % 4;
		}
	}

	FUNC6(layout);
}